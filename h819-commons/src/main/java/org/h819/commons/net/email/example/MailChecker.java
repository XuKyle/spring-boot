package org.h819.commons.net.email.example;

/**
 * Description : TODO()
 * User: h819
 * Date: 2015/3/23
 * Time: 17:53
 * To change this template use File | Settings | File Templates.
 */

import org.apache.commons.lang3.StringUtils;
import org.xbill.DNS.*;

import java.util.Arrays;


/**
 * Tool set for verifying email addressed on Android based on the DNS utils from xbill.
 *
 * @author rekire
 * @version 0.8
 * @copyright This code is licensed under the Rekisoft Public License.<br/>
 * See http://www.rekisoft.eu/licenses/rkspl.html for more informations.
 */
public final class MailChecker {
    /**
     * A small list of well known email addresses.
     */
    private static String[] domains = {"web.de", "gmx.de", "gmx.com", "gmx.net", "freenet.net", "hotmail.com", "gmail.com",
            "googlemail.com", "live.de", "live.com", "hotmail.de", "aol.com", "t-online.de", "hushmail.com", "uni.de", "yahoo.com",
            "yahoo.de"};

    static {
        // Set the network timeout to one second.
        Lookup.getDefaultResolver().setTimeout(1);
    }

    /**
     * Let you set your own list of domains which you want to use for auto correction.
     *
     * @param list Your list of well known domains.
     */
    public static void setDomainList(String[] list) {
        if (list != null) {
            domains = list;
        }
    }

    /**
     * Checks if a mail address is correct and tries to correct it if possible.
     *
     * @param mail the input mail address.
     * @return the status of the validation with a copy of the mail address on success.
     */
    public static MailChecker.AddressStatus validate(String mail) {
        String domain = StringUtils.substringAfterLast(mail, "@").trim();
        if (domain == null) {
            // System.err.println(mail + " is no valid email address");
            return AddressStatus.wrongSchema;
        }
        try {
            if (validateMxServer(domain)) {
                // System.out.println(mail + " is ok");
                return AddressStatus.valid.setMailAddress(mail);
            } else {
                for (String d : domains) {
                    if (damerauLevenshteinDistance(d, domain, 128) <= 2) {
                        // System.out.println(mail + " did you mean " + d + "?");
                        return AddressStatus.typoDetected.setMailAddress(mail.substring(0, mail.indexOf("@") + 1) + d);
                    }
                }
                if (doesDomainExists(domain)) {
                    // System.err.println(mail + " has no mail servers");
                    return AddressStatus.noMxRecord;
                } else {
                    // System.err.println("Domain \"" + domain + "\" does not exists");
                    return AddressStatus.notRegisted;
                }
            }
        } catch (IllegalStateException e) {
            return AddressStatus.unknown;
        }
    }

    /**
     * Checks if a NS record exists for the given domain.
     *
     * @param domain the domain which should be checked.
     * @return true if a NS record was found.
     * @throws IllegalStateException on network errors.
     */
    private static boolean doesDomainExists(String domain) throws IllegalStateException {
        try {
            Lookup l = new Lookup(domain, Type.NS);
            Record[] result = l.run();
            if (l.getResult() == Lookup.TRY_AGAIN) {
                throw new IllegalStateException();
            }
            return result != null && result.length > 0;
        } catch (TextParseException e) {
        }
        return false;
    }

    /**
     * Checks if a MX record exists for the given domain.
     *
     * @param domain the domain which should be checked.
     * @return true if a MX record was found.
     * @throws IllegalStateException on network errors.
     */
    private static boolean validateMxServer(String domain) throws IllegalStateException {
        try {
            Lookup l = new Lookup(domain, Type.MX);
            Record[] result = l.run();
            if (l.getResult() == Lookup.TRY_AGAIN) {
                throw new IllegalStateException();
            }
            if (result != null && result.length > 0) {
                for (Record r : result) {
                    MXRecord mx = (MXRecord) r;
                    Record[] result2 = new Lookup(mx.getTarget(), Type.A).run();
                    if (result2 != null && result2.length > 0) {
                        // System.out.println("OK! MX: " + mx.getTarget() + " -> " + ((ARecord)result2[0]).getAddress().getHostAddress());
                        return true;
                    } else {
                        // System.err.println("Fail: could not resolv " + mx.getTarget());
                    }
                }
            }
        } catch (TextParseException e) {
            e.printStackTrace();
        }
        // System.err.println("Fail: not mx record for " + domain + " found");
        return false;
    }

    /**
     * Calculated the Damerau-Levenshtein-Distance.
     *
     * @param a              input string one.
     * @param b              input string two.
     * @param alphabetLength the length of the alphabet.
     * @return the distance.
     * @author M. Jessup (http://stackoverflow.com/a/6035519/995926)
     */
    private static int damerauLevenshteinDistance(String a, String b, int alphabetLength) {
        final int INFINITY = a.length() + b.length();
        int[][] H = new int[a.length() + 2][b.length() + 2];
        H[0][0] = INFINITY;
        for (int i = 0; i <= a.length(); i++) {
            H[i + 1][1] = i;
            H[i + 1][0] = INFINITY;
        }
        for (int j = 0; j <= b.length(); j++) {
            H[1][j + 1] = j;
            H[0][j + 1] = INFINITY;
        }
        int[] DA = new int[alphabetLength];
        Arrays.fill(DA, 0);
        for (int i = 1; i <= a.length(); i++) {
            int DB = 0;
            for (int j = 1; j <= b.length(); j++) {
                int i1 = DA[b.charAt(j - 1)];
                int j1 = DB;
                int d = ((a.charAt(i - 1) == b.charAt(j - 1)) ? 0 : 1);
                if (d == 0)
                    DB = j;
                H[i + 1][j + 1] = min(H[i][j] + d, H[i + 1][j] + 1, H[i][j + 1] + 1, H[i1][j1] + (i - i1 - 1) + 1 + (j - j1 - 1));
            }
            DA[a.charAt(i - 1)] = i;
        }
        return H[a.length() + 1][b.length() + 1];
    }

    /**
     * Helper function for getting the minimal value of a set of ints.
     *
     * @param nums The integer values which should been checked.
     * @return the minimal value.
     */
    private static int min(int... nums) {
        int min = Integer.MAX_VALUE;
        for (int num : nums) {
            min = min < num ? min : num;
        }
        return min;
    }

    /**
     * The status of the mail address verification.
     *
     * @author rekire
     */
    public static enum AddressStatus {
        /**
         * The address seems to be fine
         */
        valid,
        /**
         * The address has some schema errors like a missing at sign
         */
        wrongSchema,
        /**
         * The domain is currently not registed
         */
        notRegisted,
        /**
         * The domain has no MX record (so the domain cannot receive mails)
         */
        noMxRecord,
        /**
         * A typographic error was detected
         */
        typoDetected,
        /**
         * The status of the address is unknown
         */
        unknown,
        /**
         * The mail address check is pending
         */
        pending;

        private String mail;

        /**
         * @return the suggested mail address.
         */
        public String getMailAddress() {
            return mail;
        }

        /**
         * Set the email address in case of a detected typo.
         *
         * @param mail The mail address which is guessed.
         * @return this.
         */
        protected AddressStatus setMailAddress(String mail) {
            this.mail = mail;
            return this;
        }

        /**
         * @return <code>true</code> if the email address is not valid or a typo was detected.
         */
        public boolean wrong() {
            return this != valid && this != typoDetected;
        }
    }
}
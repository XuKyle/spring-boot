package com.base.spring.custom;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Description : TODO()
 * User: h819
 * Date: 2016/12/2
 * Time: 15:20
 * To change this template use File | Settings | File Templates.
 */
@Component
public class CustomAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {
    private static final Logger logger = LoggerFactory.getLogger(CustomAuthenticationFailureHandler.class);

    /**
     * 打印必要的错误信息后，继续执行。spring security 出现如下异常，控制台不打印信息，无法指定发生了哪种类型的错误
     *
     * @param request
     * @param response
     * @param exception
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
        logger.error("spring security Authentication Fail : {}", exception.getMessage());
        // spring security 不打印异常信息，无法定位错误，这里打印出来
        // 不打印，通过 下面的  sendRedirect 传递信息
        // exception.printStackTrace();

        RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
        redirectStrategy.sendRedirect(request, response, "/myerror?error=" + exception.getMessage());
        setDefaultFailureUrl("/myerror?error" + exception.getMessage());
        // setRedirectStrategy(redirectStrategy);

//        //根据错误情况，做不同的处理
//        //也可以设置  setDefaultFailureUrl("/url3"); 进行跳转
//        if (exception.getClass().isAssignableFrom(UsernameNotFoundException.class)) {
//            logger.info("用户名没找到");
//            // setDefaultFailureUrl("/url3");
//        } else if (exception.getClass().isAssignableFrom(DisabledException.class)) {
//            logger.info("用户无效");
//            // setDefaultFailureUrl("/url3");
//        } else if (exception.getClass().isAssignableFrom(BadCredentialsException.class)) {
//            logger.info("用户无效或被锁定");
//            // setDefaultFailureUrl("/url1");
//        } else if (exception.getClass().isAssignableFrom(SessionAuthenticationException.class)) {
//            logger.info("登录会话过多");
//            exception.printStackTrace();
//             setDefaultFailureUrl("/url3");
//        } else if (exception.getClass().isAssignableFrom(InvalidCookieException.class)) {
//            logger.info("RememberMe 异常 ,cookies 失效或格式不对");
//        }

        //继续按照默认的流程执行，根据错误情况，进行跳转
        // super.onAuthenticationFailure(request, response, exception);
    }


}

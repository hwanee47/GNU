package com.gnu.xml;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;




public class AdviceUsingXML {
	//TODO [Step 1-6] AdviceUsingXML 작성
	private static final Logger LOGGER = Logger.getLogger(AdviceUsingXML.class);

	public void beforeTargetMethod(JoinPoint thisJoinPoint) {
		LOGGER.debug("\nAdviceUsingXML.beforeTargetMethod executed.");
		@SuppressWarnings("unused")
		Class<? extends Object> clazz = thisJoinPoint.getTarget().getClass();
		String className = thisJoinPoint.getTarget().getClass().getSimpleName();
		String methodName = thisJoinPoint.getSignature().getName();

		// 현재 class, method 정보 및 method arguments 로깅
		StringBuffer buf = new StringBuffer();
		buf.append("\n\n======================== 다음 메소드실행합니다. : [" + className
			+ "." + methodName + "()] =====================================");
		Object[] arguments = thisJoinPoint.getArgs();
		int argCount = 0;
		for (Object obj : arguments) {
			buf.append("\n - arg ");
			buf.append(argCount++);
			buf.append(" : ");
			// commons-lang 의 ToStringBuilder 를
			// 통해(reflection 을 이용)한 VO 정보 출력
			buf.append(ToStringBuilder.reflectionToString(obj));
		}

		// 대상 클래스의 logger 를 사용하여 method arguments 로깅
		// 하였음.
		LOGGER.debug(buf.toString());

	}

	public void afterTargetMethod(JoinPoint thisJoinPoint) {
		LOGGER.debug("AdviceUsingXML.afterTargetMethod executed.");
	}

	public void afterReturningTargetMethod(JoinPoint thisJoinPoint,
			Object retVal) {
		LOGGER.debug("AdviceUsingXML.afterReturningTargetMethod executed.");

		@SuppressWarnings("unused")
		Class<? extends Object> clazz = thisJoinPoint.getTarget().getClass();
		String className = thisJoinPoint.getTarget().getClass().getSimpleName();
		String methodName = thisJoinPoint.getSignature().getName();

		// 현재 class, method 정보 및 method arguments 로깅
		StringBuffer buf = new StringBuffer();
		buf.append("\n======================== 다음 메소드 종료합니다. : ["
			+ className + "." + methodName + "()] =====================================\n\n");

		buf.append("\n");

		// 결과값이 List 이면 size 와 전체 List 데이터를 풀어
		// reflection 으로 출력 - 성능상 사용않는 것이 좋음
		if (retVal instanceof List) {
			List<?> resultList = (List<?>) retVal;
			buf.append("resultList size : " + resultList.size() + "\n");
			for (Object oneRow : resultList) {
				buf.append(ToStringBuilder.reflectionToString(oneRow));
				buf.append("\n");
			}
		} else {
			buf.append(ToStringBuilder.reflectionToString(retVal));
		}

		// 대상 클래스의 logger 를 사용하여 결과값 로깅
		// 하였음.
		LOGGER.debug(buf.toString());

		// return value 의 변경은 불가함에 유의!
	}

	public void afterThrowingTargetMethod(JoinPoint thisJoinPoint,
			Exception exception) throws Exception {
		LOGGER.debug("AdviceUsingXML.afterThrowingTargetMethod executed.");
		LOGGER.error("에러가 발생했습니다. {}", exception);

		// 원본 exception 을 wrapping 하고 user-friendly 한
		// 메시지를 설정하여 새로운 Exception 으로 re-throw
		throw new Exception("에러가 발생했습니다.", exception);

		// 여기서는 간단하게 작성하였지만 일반적으로 messageSource 를 사용한
		// locale 에 따른 다국어 처리 및 egov. exceptionHandler
		// 를 확장한 Biz. (ex. email 공지 등) 기능 적용이 가능함.
	}

	public Object aroundTargetMethod(ProceedingJoinPoint thisJoinPoint)
			throws Throwable {
		LOGGER.debug("AdviceUsingXML.aroundTargetMethod start.");
		long time1 = System.currentTimeMillis();

		Object retVal = thisJoinPoint.proceed();

		// Around advice 의 경우 결과값을 변경할 수도 있음!
		// 위의 retVal 을 가공하거나 심지어 전혀 다른 결과값을 대체하여
		// caller 에 되돌려줄 수 있음

		long time2 = System.currentTimeMillis();
		LOGGER.debug("AdviceUsingXML.aroundTargetMethod end. Time({"+(time2 - time1)+"})");

		return retVal;
	}

}

/*import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import com.gnu.app.HomeController;

@Aspect
@Component
public class AdviceUsingXML {
 
	private static final Logger logger = Logger.getLogger(HomeController.class);
	
	@Before("execution(* com..*DAOImpl.*(..))") // joinpoint 지정
	public void beforeAdvice(JoinPoint joinPoint) {
		
		logger.info("=================== START =========================");
		String type = joinPoint.getSignature().getDeclaringTypeName();
		
		logger.info("실행 METHOD :: "+type + "." + joinPoint.getSignature().getName() + "()");
		
	}
	   
	@After("execution(* com..*DAOImpl.*(..))") // joinpoint 지정
	public void afterAdvice(JoinPoint joinPoint) {
		
		//logger.info("==================== END ==========================");
	}
	
	
	@Around("execution(* com..*DAOImpl.*(..))") // joinpoint 지정
	public void aroundAdvice(JoinPoint joinPoint) {
		
		try {
			logger.info("=================== START =========================");
			String type = joinPoint.getSignature().getDeclaringTypeName();
			
			logger.info("실행 METHOD :: "+type + "." + joinPoint.getSignature().getName() + "()");
			
			long start = System.currentTimeMillis();
        
			joinPoint.proceed();
			
			long end = System.currentTimeMillis();
			logger.info("수행 시간       :: "+ (end - start));
			logger.info("==================== END ==========================");
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		
		
	}
	
	

}
 



*/
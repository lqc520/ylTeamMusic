package utils;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MybatisSessionFactory {

    private static String CONFIG_FILE_LOCATION = "MyBatis-configuration.xml";
	private static final ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();   
    private static SqlSessionFactory sqlSessionFactory;
    private static InputStream is;

	static {
    	try {
    		is = Resources.getResourceAsStream(CONFIG_FILE_LOCATION);
    		sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
		} catch (Exception e) {
			System.err
					.println("%%%% Error Creating SessionFactory %%%%");
			e.printStackTrace();
		}
    }
	
    private MybatisSessionFactory() {
    	
    }
	

    public static SqlSession getSession() {
    	SqlSession session = (SqlSession) threadLocal.get();
		if (session == null) {
			session = sqlSessionFactory.openSession();
			threadLocal.set(session);
		}
        return session;
    }

    public static void closeSession() {
    	SqlSession session = (SqlSession) threadLocal.get();
        threadLocal.set(null);

        if (session != null) {
            session.close();
        }
    }
    public static void commitSession(){
    	SqlSession session = (SqlSession) threadLocal.get();
        threadLocal.set(null);

        if (session != null) {
            session.commit();
        }
    }
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}


}
package Log.basic;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;

import board.dao.BoardDAO;
import board.model.BoardVO;

public class SimpleLog {
	
	static Logger logger = Logger.getLogger(SimpleLog.class.getName());
	
	public static void main(String[] args) {
		BoardDAO dao = new BoardDAO();
		BasicConfigurator.configure();
//		logger.info("[INFO] hello log4j");
		logger.info("[INFO] "+dao.insert(new BoardVO()));

	}

}

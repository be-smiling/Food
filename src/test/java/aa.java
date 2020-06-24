import com.sise.Application;
import com.sise.dao.CategoryDao;
import com.sise.dao.CommentaryDao;
import com.sise.dao.FoodDao;
import com.sise.pojo.Category;
import com.sise.pojo.Commentary;
import com.sise.pojo.Food;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.Optional;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = Application.class)
public class aa {
    @Autowired
    private CommentaryDao commentaryDao;

    @Autowired
    private FoodDao foodDao;
    @Test
    public void testAA(){
        List<Commentary> commentaryList = commentaryDao.findAll();
        for (Commentary commentary : commentaryList) {
            System.out.println(commentary);
        }
    }

//    @Test
//    public void testBB(){
//        List<Food> foodList = foodDao.findByUser_Uid(1l);
//        for (Food food : foodList) {
//            System.out.println(food);
//        }
//    }
}

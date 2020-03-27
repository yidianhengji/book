package com.pg.book.dao;

import com.pg.book.BookApplicationTests;
import com.pg.book.entity.Article;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class ArticleMapperTest extends BookApplicationTests {

    @Autowired
    private ArticleMapper articleMapper;

    @Test
    public void queryOne() {
        Article article = articleMapper.queryOne("11");
        System.out.println(article.toString());
    }
}
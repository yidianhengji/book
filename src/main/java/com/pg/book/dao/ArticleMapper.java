package com.pg.book.dao;

import com.pg.book.entity.Article;

public interface ArticleMapper {
    Article queryOne(String uuid);
}

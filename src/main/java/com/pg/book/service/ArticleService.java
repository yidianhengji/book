package com.pg.book.service;

import com.github.pagehelper.Page;
import com.pg.book.dto.ArticleDto;
import com.pg.book.entity.Article;

public interface ArticleService {

    Page<Article> queryAll(ArticleDto articleDto);

    Article queryOne(String uuid);

    Article insert(Article article);

    Article update(Article article);
}

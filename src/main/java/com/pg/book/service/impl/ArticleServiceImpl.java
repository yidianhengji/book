package com.pg.book.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.util.StringUtil;
import com.pg.book.dao.ArticleMapper;
import com.pg.book.dto.ArticleDto;
import com.pg.book.entity.Article;
import com.pg.book.handler.BusinessException;
import com.pg.book.handler.BusinessStatus;
import com.pg.book.service.ArticleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Resource
    private ArticleMapper articleMapper;

    @Override
    public Page<Article> queryAll(ArticleDto articleDto) {
        if (articleDto.getPageSize() != null && articleDto.getPageNum() != null) {
            PageHelper.startPage(articleDto.getPageNum(), articleDto.getPageSize());
        }
        Page<Article> pages = this.articleMapper.queryAll(articleDto);
        return pages;
    }

    @Override
    public Article queryOne(String uuid) {
        return this.articleMapper.queryOne(uuid);
    }

    @Override
    public Article insert(Article article) {
        article.setUuid(UUID.randomUUID().toString().replace("-", ""));
        article.setModifyTime(new Date());
        article.setCreateTime(new Date());
        this.articleMapper.insert(article);
        return article;
    }

    @Override
    public Article update(Article article) {
        if (StringUtil.isEmpty(article.getUuid())) {
            throw new BusinessException(BusinessStatus.UUID_REQ);
        }
        article.setModifyTime(new Date());
        this.articleMapper.update(article);
        return article;
    }
}

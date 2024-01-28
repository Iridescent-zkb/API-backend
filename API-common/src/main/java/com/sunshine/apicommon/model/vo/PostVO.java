package com.sunshine.apicommon.model.vo;

import com.sunshine.apicommon.model.entity.Post;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 *
 *
 * @TableName product
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class PostVO extends Post {

    /**
     * 是否已点赞
     */
    private Boolean hasThumb;

    private static final long serialVersionUID = 1L;
}
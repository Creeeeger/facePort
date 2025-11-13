.class public final Lorg/simpleframework/xml/core/TemplateEngine;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public filter:Lorg/simpleframework/xml/filter/Filter;

.field public name:Lorg/simpleframework/xml/core/Template;

.field public off:I

.field public source:Lorg/simpleframework/xml/core/Template;

.field public text:Lorg/simpleframework/xml/core/Template;


# virtual methods
.method public final parse()V
    .locals 8

    :cond_0
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v2, v1, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v0, v2, :cond_7

    iget-object v3, v1, Lorg/simpleframework/xml/core/Template;->buf:[C

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v5, v3, v0

    iget-object v6, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const/16 v7, 0x24

    if-ne v5, v7, :cond_6

    if-ge v4, v2, :cond_6

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v0, v3, v4

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_5

    :goto_1
    iget v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget v2, v1, Lorg/simpleframework/xml/core/Template;->count:I

    iget-object v3, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    const/4 v4, 0x0

    const-string v5, "${"

    if-ge v0, v2, :cond_4

    iget-object v2, v1, Lorg/simpleframework/xml/core/Template;->buf:[C

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v0, v2, v0

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_3

    iget v0, v3, Lorg/simpleframework/xml/core/Template;->count:I

    if-lez v0, :cond_2

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Template;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v6, v5}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    const-string/jumbo v0, "}"

    invoke-virtual {v6, v0}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    :cond_2
    :goto_2
    iput v4, v3, Lorg/simpleframework/xml/core/Template;->count:I

    goto :goto_3

    :cond_3
    iget v2, v3, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lorg/simpleframework/xml/core/Template;->ensureCapacity(I)V

    iget-object v2, v3, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v4, v3, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lorg/simpleframework/xml/core/Template;->count:I

    aput-char v0, v2, v4

    goto :goto_1

    :cond_4
    :goto_3
    iget v0, v3, Lorg/simpleframework/xml/core/Template;->count:I

    if-lez v0, :cond_0

    invoke-virtual {v6, v5}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    iget-object v0, v3, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, v3, Lorg/simpleframework/xml/core/Template;->count:I

    iget v2, v6, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/2addr v2, v1

    invoke-virtual {v6, v2}, Lorg/simpleframework/xml/core/Template;->ensureCapacity(I)V

    iget-object v2, v6, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v3, v6, Lorg/simpleframework/xml/core/Template;->count:I

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v6, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/2addr v0, v1

    iput v0, v6, Lorg/simpleframework/xml/core/Template;->count:I

    goto/16 :goto_0

    :cond_5
    iput v4, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    :cond_6
    iget v0, v6, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Lorg/simpleframework/xml/core/Template;->ensureCapacity(I)V

    iget-object v0, v6, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, v6, Lorg/simpleframework/xml/core/Template;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Lorg/simpleframework/xml/core/Template;->count:I

    aput-char v5, v0, v1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

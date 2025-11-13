.class public Landroid/media/browse/MediaBrowserUtils;
.super Ljava/lang/Object;
.source "MediaBrowserUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applyPagingOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v1, :cond_1

    if-ne v2, v1, :cond_1

    return-object p0

    :cond_1
    mul-int v1, v2, v0

    add-int v3, v1, v2

    if-ltz v0, :cond_4

    const/4 v4, 0x1

    if-lt v2, v4, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    :cond_3
    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    return-object v4

    :cond_4
    :goto_0
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v4
.end method

.method public static greylist-max-o areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    if-nez p0, :cond_2

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_5

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method public static greylist-max-o hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9

    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    if-nez p0, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :goto_2
    if-nez p1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :goto_3
    const/4 v5, 0x1

    if-eq v2, v1, :cond_5

    if-ne v4, v1, :cond_4

    goto :goto_4

    :cond_4
    mul-int v6, v4, v2

    add-int v7, v6, v4

    sub-int/2addr v7, v5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x0

    const v7, 0x7fffffff

    :goto_5
    if-eq v0, v1, :cond_7

    if-ne v3, v1, :cond_6

    goto :goto_6

    :cond_6
    mul-int v1, v3, v0

    add-int v8, v1, v3

    sub-int/2addr v8, v5

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v1, 0x0

    const v8, 0x7fffffff

    :goto_7
    if-gt v6, v1, :cond_8

    if-gt v1, v7, :cond_8

    return v5

    :cond_8
    if-gt v6, v8, :cond_9

    if-gt v8, v7, :cond_9

    return v5

    :cond_9
    const/4 v5, 0x0

    return v5
.end method

.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private blacklist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field final greylist-max-o mHtmlText:Ljava/lang/String;

.field final greylist-max-o mIntent:Landroid/content/Intent;

.field final greylist-max-o mText:Ljava/lang/CharSequence;

.field private blacklist mTextLinks:Landroid/view/textclassifier/TextLinks;

.field greylist-max-p mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityInfo(Landroid/content/ClipData$Item;)Landroid/content/pm/ActivityInfo;
    .locals 0

    iget-object p0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextLinks(Landroid/content/ClipData$Item;)Landroid/view/textclassifier/TextLinks;
    .locals 0

    iget-object p0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ClipData$Item;)V
    .locals 1
    .param p1, "other"    # Landroid/content/ClipData$Item;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iget-object v0, p1, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 234
    iget-object v0, p1, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 235
    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 236
    iget-object v0, p1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 237
    iget-object v0, p1, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 238
    iget-object v0, p1, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    .line 239
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 272
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 274
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 275
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 282
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 284
    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 285
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 248
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 249
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 294
    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 295
    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 296
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 262
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 264
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 265
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "uri"    # Landroid/net/Uri;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Plain text must be supplied if HTML text is supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 310
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 312
    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 313
    return-void
.end method

.method private greylist-max-o coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styled"    # Z

    .line 559
    const-string v0, "ClipData"

    iget-object v1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string v2, ""

    if-eqz v1, :cond_15

    .line 564
    const/4 v1, 0x0

    .line 566
    .local v1, "types":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string/jumbo v5, "text/*"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 569
    goto :goto_0

    .line 567
    :catch_0
    move-exception v3

    .line 570
    :goto_0
    const/4 v3, 0x0

    .line 571
    .local v3, "hasHtml":Z
    const/4 v4, 0x0

    .line 572
    .local v4, "hasText":Z
    const-string/jumbo v5, "text/html"

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 573
    array-length v7, v1

    move v8, v6

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v1, v8

    .line 574
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 575
    const/4 v3, 0x1

    goto :goto_2

    .line 576
    :cond_0
    const-string/jumbo v10, "text/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 577
    const/4 v4, 0x1

    .line 573
    .end local v9    # "type":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 583
    :cond_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_10

    .line 584
    :cond_3
    const/4 v7, 0x0

    .line 587
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 589
    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const-string/jumbo v5, "text/plain"

    :goto_3
    const/4 v10, 0x0

    .line 588
    invoke-virtual {v8, v9, v5, v10}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 590
    .local v5, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    move-object v7, v8

    .line 591
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 594
    .local v8, "reader":Ljava/io/InputStreamReader;
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 595
    .local v9, "builder":Ljava/lang/StringBuilder;
    const/16 v10, 0x2000

    new-array v10, v10, [C

    .line 597
    .local v10, "buffer":[C
    :goto_4
    invoke-virtual {v8, v10}, Ljava/io/InputStreamReader;->read([C)I

    move-result v11

    move v12, v11

    .local v12, "len":I
    if-lez v11, :cond_5

    .line 598
    invoke-virtual {v9, v10, v6, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 600
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    .local v6, "text":Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 602
    if-eqz p2, :cond_9

    .line 606
    :try_start_2
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 607
    .local v0, "newText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_6

    move-object v2, v0

    goto :goto_5

    :cond_6
    move-object v2, v6

    .line 640
    :goto_5
    if-eqz v7, :cond_7

    .line 642
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 644
    goto :goto_6

    .line 643
    :catch_1
    move-exception v11

    .line 607
    :cond_7
    :goto_6
    return-object v2

    .line 608
    .end local v0    # "newText":Ljava/lang/CharSequence;
    :catch_2
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/RuntimeException;
    nop

    .line 640
    if-eqz v7, :cond_8

    .line 642
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 644
    goto :goto_7

    .line 643
    :catch_3
    move-exception v2

    .line 609
    :cond_8
    :goto_7
    return-object v6

    .line 614
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_9
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 640
    if-eqz v7, :cond_a

    .line 642
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 644
    goto :goto_8

    .line 643
    :catch_4
    move-exception v2

    .line 614
    :cond_a
    :goto_8
    return-object v0

    .line 617
    :cond_b
    if-eqz p2, :cond_d

    .line 620
    nop

    .line 640
    if-eqz v7, :cond_c

    .line 642
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 644
    goto :goto_9

    .line 643
    :catch_5
    move-exception v0

    .line 620
    :cond_c
    :goto_9
    return-object v6

    .line 624
    :cond_d
    :try_start_8
    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 640
    if-eqz v7, :cond_e

    .line 642
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 644
    goto :goto_a

    .line 643
    :catch_6
    move-exception v2

    .line 624
    :cond_e
    :goto_a
    return-object v0

    .line 640
    .end local v5    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "text":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "buffer":[C
    .end local v12    # "len":I
    :catchall_0
    move-exception v0

    goto :goto_f

    .line 634
    :catch_7
    move-exception v2

    .line 636
    .local v2, "e":Ljava/io/IOException;
    :try_start_a
    const-string v5, "Failure loading text"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 640
    if-eqz v7, :cond_f

    .line 642
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 644
    goto :goto_b

    .line 643
    :catch_8
    move-exception v5

    .line 637
    :cond_f
    :goto_b
    return-object v0

    .line 630
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 640
    if-eqz v7, :cond_10

    .line 642
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 644
    :goto_c
    goto :goto_d

    .line 643
    :catch_a
    move-exception v0

    goto :goto_c

    .line 627
    :catch_b
    move-exception v5

    .line 628
    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_d
    const-string v6, "Failure opening stream"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 640
    nop

    .end local v5    # "e":Ljava/lang/SecurityException;
    if-eqz v7, :cond_10

    .line 642
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_c

    .line 651
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_10
    :goto_d
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "scheme":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 653
    const-string v5, "android.resource"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 654
    const-string v5, "file"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_e

    .line 658
    :cond_11
    if-eqz p2, :cond_12

    .line 659
    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 661
    :cond_12
    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 655
    :cond_13
    :goto_e
    return-object v2

    .line 640
    .end local v0    # "scheme":Ljava/lang/String;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_f
    if-eqz v7, :cond_14

    .line 642
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 644
    goto :goto_10

    .line 643
    :catch_c
    move-exception v2

    .line 646
    :cond_14
    :goto_10
    throw v0

    .line 667
    .end local v1    # "types":[Ljava/lang/String;
    .end local v3    # "hasHtml":Z
    .end local v4    # "hasText":Z
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_15
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_17

    .line 668
    const/4 v1, 0x1

    if-eqz p2, :cond_16

    .line 669
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 671
    :cond_16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 676
    :cond_17
    return-object v2
.end method

.method private greylist-max-o uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 681
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 690
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 691
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 692
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 694
    return-object v0
.end method


# virtual methods
.method public whitelist coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 539
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 541
    return-object v0

    .line 545
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 546
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 547
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 548
    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-static {v2}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 550
    :cond_1
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 553
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 554
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public whitelist coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 488
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 489
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 490
    return-object v0

    .line 492
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "htmlText":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 495
    :try_start_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .local v2, "newText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 497
    return-object v2

    .line 501
    .end local v2    # "newText":Ljava/lang/CharSequence;
    :cond_1
    goto :goto_0

    .line 499
    :catch_0
    move-exception v2

    .line 504
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 505
    return-object v0

    .line 507
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public whitelist coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 406
    const-string v0, "ClipData"

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 407
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 408
    return-object v1

    .line 412
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 413
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, ""

    if-eqz v2, :cond_5

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 418
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 419
    .local v5, "descr":Landroid/content/res/AssetFileDescriptor;
    const/4 v6, 0x0

    .line 420
    .local v6, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 424
    .local v7, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    const-string/jumbo v8, "text/*"

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v8, v9}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v8

    .line 430
    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 427
    :catch_0
    move-exception v8

    goto :goto_0

    .line 425
    :catch_1
    move-exception v8

    .line 426
    .local v8, "e":Ljava/lang/SecurityException;
    :try_start_1
    const-string v9, "Failure opening stream"

    invoke-static {v0, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    nop

    .line 431
    .end local v8    # "e":Ljava/lang/SecurityException;
    :goto_0
    if-eqz v5, :cond_2

    .line 433
    :try_start_2
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v6, v3

    .line 434
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v3, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v7, v3

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 438
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/16 v8, 0x2000

    new-array v8, v8, [C

    .line 440
    .local v8, "buffer":[C
    :goto_1
    invoke-virtual {v7, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v9

    move v10, v9

    .local v10, "len":I
    if-lez v9, :cond_1

    .line 441
    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 443
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 452
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 453
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 443
    return-object v0

    .line 444
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "buffer":[C
    .end local v10    # "len":I
    :catch_2
    move-exception v3

    .line 446
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "Failure loading text"

    invoke-static {v0, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 452
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 453
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 447
    return-object v0

    .line 451
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 452
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 453
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 454
    nop

    .line 458
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "scheme":Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 460
    const-string v8, "android.resource"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 461
    const-string v8, "file"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 464
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 462
    :cond_4
    :goto_2
    return-object v3

    .line 451
    .end local v0    # "scheme":Ljava/lang/String;
    :goto_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 452
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 453
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 454
    throw v0

    .line 469
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    :cond_5
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_6

    .line 471
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 475
    :cond_6
    return-object v3
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 758
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 760
    .local v8, "token":J
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 761
    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 762
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 763
    const-wide v1, 0x10900000002L

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 765
    const-wide v1, 0x10900000003L

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 767
    const-wide v2, 0x10b00000004L

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    goto :goto_0

    .line 769
    :cond_3
    const-wide v0, 0x10800000005L

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 772
    :goto_0
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 773
    return-void
.end method

.method public blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 348
    iget-object v0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public whitelist getHtmlText()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextLinks()Landroid/view/textclassifier/TextLinks;
    .locals 1

    .line 372
    iget-object v0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    return-object v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .locals 1

    .line 340
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist setActivityInfo(Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 356
    iput-object p1, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 357
    return-void
.end method

.method public blacklist setTextLinks(Landroid/view/textclassifier/TextLinks;)V
    .locals 0
    .param p1, "textLinks"    # Landroid/view/textclassifier/TextLinks;

    .line 379
    iput-object p1, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    .line 380
    return-void
.end method

.method public blacklist toShortString(Ljava/lang/StringBuilder;Z)V
    .locals 8
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "redactContent"    # Z

    .line 715
    const/4 v0, 0x1

    .line 716
    .local v0, "first":Z
    iget-object v1, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    const/16 v2, 0x29

    if-eqz v1, :cond_1

    .line 717
    const/4 v0, 0x0

    .line 718
    if-eqz p2, :cond_0

    .line 719
    const-string v1, "H("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 721
    :cond_0
    const-string v1, "H:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    const/16 v3, 0x20

    if-eqz v1, :cond_4

    .line 725
    if-nez v0, :cond_2

    .line 726
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    :cond_2
    const/4 v0, 0x0

    .line 729
    if-eqz p2, :cond_3

    .line 730
    const-string v1, "T("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 732
    :cond_3
    const-string v1, "T:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 735
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_7

    .line 736
    if-nez v0, :cond_5

    .line 737
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    :cond_5
    const/4 v0, 0x0

    .line 740
    if-eqz p2, :cond_6

    .line 741
    const-string v1, "U("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 743
    :cond_6
    const-string v1, "U:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 746
    :cond_7
    :goto_2
    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_9

    .line 747
    if-nez v0, :cond_8

    .line 748
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    :cond_8
    const/4 v0, 0x0

    .line 751
    const-string v1, "I:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget-object v2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 754
    :cond_9
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 701
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 703
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

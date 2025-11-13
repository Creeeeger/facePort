.class Landroid/media/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field private static final blacklist DEFAULT_FRAMERATE:I = 0x1e

.field private static final blacklist DEFAULT_SUBFRAMERATE:I = 0x1

.field private static final blacklist DEFAULT_TICKRATE:I = 0x1

.field static final blacklist TAG:Ljava/lang/String; = "TtmlParser"


# instance fields
.field private blacklist mCurrentRunId:J

.field private final blacklist mListener:Landroid/media/TtmlNodeListener;

.field private blacklist mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor blacklist <init>(Landroid/media/TtmlNodeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/TtmlNodeListener;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    .line 438
    return-void
.end method

.method private blacklist extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "i"    # I
    .param p3, "out"    # Ljava/lang/StringBuilder;

    .line 464
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    return-void
.end method

.method private blacklist isEndOfDoc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 624
    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist loadParser(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttmlFragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 456
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 457
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 458
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 459
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, "in":Ljava/io/StringReader;
    iget-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 461
    return-void
.end method

.method private blacklist parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;
    .locals 21
    .param p1, "parent"    # Landroid/media/TtmlNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-object v1, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 530
    .local v13, "eventType":I
    const/4 v1, 0x2

    if-eq v13, v1, :cond_0

    .line 531
    const/4 v1, 0x0

    return-object v1

    .line 535
    :cond_0
    const-wide/16 v1, 0x0

    .line 536
    .local v1, "start":J
    const-wide v3, 0x7fffffffffffffffL

    .line 537
    .local v3, "end":J
    const-wide/16 v5, 0x0

    .line 539
    .local v5, "dur":J
    iget-object v7, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "p"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_7

    .line 540
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v10, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 541
    cmp-long v10, v1, v8

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    cmp-long v10, v3, v8

    if-nez v10, :cond_1

    cmp-long v10, v5, v8

    if-eqz v10, :cond_2

    :cond_1
    if-le v7, v11, :cond_2

    .line 542
    goto :goto_2

    .line 544
    :cond_2
    iget-object v10, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 545
    .local v10, "attr":Ljava/lang/String;
    iget-object v14, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 547
    .local v14, "value":Ljava/lang/String;
    const-string v15, "^.*:"

    const-string v8, ""

    invoke-virtual {v10, v15, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 548
    .end local v10    # "attr":Ljava/lang/String;
    .local v8, "attr":Ljava/lang/String;
    const-string v9, "begin"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x1e

    if-eqz v9, :cond_3

    .line 549
    invoke-static {v14, v10, v11, v11}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v1

    goto :goto_1

    .line 551
    :cond_3
    const-string v9, "end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 552
    invoke-static {v14, v10, v11, v11}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v3

    goto :goto_1

    .line 554
    :cond_4
    const-string v9, "dur"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 555
    invoke-static {v14, v10, v11, v11}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v5

    .line 540
    .end local v8    # "attr":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v8, 0x0

    goto :goto_0

    .line 588
    .end local v7    # "i":I
    :cond_6
    :goto_2
    move-wide v14, v5

    goto :goto_3

    .line 539
    :cond_7
    move-wide v14, v5

    .line 588
    .end local v5    # "dur":J
    .local v14, "dur":J
    :goto_3
    const-wide v5, 0x7fffffffffffffffL

    if-eqz v12, :cond_9

    .line 589
    iget-wide v7, v12, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v1, v7

    .line 590
    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    .line 591
    iget-wide v7, v12, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v3, v7

    move-wide/from16 v18, v1

    goto :goto_4

    .line 590
    :cond_8
    move-wide/from16 v18, v1

    goto :goto_4

    .line 588
    :cond_9
    move-wide/from16 v18, v1

    .line 594
    .end local v1    # "start":J
    .local v18, "start":J
    :goto_4
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_b

    .line 595
    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    .line 596
    const-string v1, "TtmlParser"

    const-string v2, "\'dur\' and \'end\' attributes are defined at the same time.\'end\' value is ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_a
    add-long v3, v18, v14

    .line 601
    :cond_b
    if-eqz v12, :cond_c

    .line 604
    cmp-long v1, v3, v5

    if-nez v1, :cond_c

    iget-wide v1, v12, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_c

    iget-wide v1, v12, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_c

    .line 607
    iget-wide v3, v12, Landroid/media/TtmlNode;->mEndTimeMs:J

    move-wide/from16 v16, v3

    goto :goto_5

    .line 613
    :cond_c
    move-wide/from16 v16, v3

    .end local v3    # "end":J
    .local v16, "end":J
    :goto_5
    new-instance v20, Landroid/media/TtmlNode;

    iget-object v1, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-wide v10, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    move-object/from16 v1, v20

    move-wide/from16 v5, v18

    move-wide/from16 v7, v16

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v11}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    .line 616
    .local v1, "node":Landroid/media/TtmlNode;
    return-object v1
.end method

.method private blacklist parseTtml()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 476
    .local v1, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/TtmlNode;>;"
    const/4 v2, 0x0

    .line 477
    .local v2, "depthInUnsupportedTag":I
    const/4 v3, 0x1

    .line 478
    .local v3, "active":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/media/TtmlParser;->isEndOfDoc()Z

    move-result v4

    if-nez v4, :cond_d

    .line 479
    iget-object v4, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 480
    .local v4, "eventType":I
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TtmlNode;

    .line 481
    .local v5, "parent":Landroid/media/TtmlNode;
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v3, :cond_9

    .line 482
    if-ne v4, v7, :cond_2

    .line 483
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is ignored."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TtmlParser"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    add-int/lit8 v2, v2, 0x1

    .line 486
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 488
    :cond_0
    invoke-direct {v0, v5}, Landroid/media/TtmlParser;->parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;

    move-result-object v6

    .line 489
    .local v6, "node":Landroid/media/TtmlNode;
    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 490
    if-eqz v5, :cond_1

    .line 491
    iget-object v7, v5, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v6    # "node":Landroid/media/TtmlNode;
    :cond_1
    move/from16 v21, v3

    goto/16 :goto_3

    .line 494
    :cond_2
    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    .line 497
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    .line 499
    .local v17, "text":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 500
    if-eqz v5, :cond_3

    .line 501
    iget-object v15, v5, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    new-instance v14, Landroid/media/TtmlNode;

    const-wide/16 v10, 0x0

    const-wide v12, 0x7fffffffffffffffL

    iget-wide v8, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    const-string v7, "#pcdata"

    const-string v16, ""

    move-object v6, v14

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v20, v14

    move-object v14, v5

    move/from16 v21, v3

    move-object v3, v15

    .end local v3    # "active":Z
    .local v21, "active":Z
    move-wide/from16 v15, v18

    invoke-direct/range {v6 .. v16}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    move-object/from16 v6, v20

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 500
    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    :cond_3
    move/from16 v21, v3

    .end local v3    # "active":Z
    .restart local v21    # "active":Z
    goto :goto_2

    .line 499
    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    :cond_4
    move/from16 v21, v3

    .end local v3    # "active":Z
    .restart local v21    # "active":Z
    goto :goto_2

    .line 506
    .end local v17    # "text":Ljava/lang/String;
    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    :cond_5
    move/from16 v21, v3

    .end local v3    # "active":Z
    .restart local v21    # "active":Z
    if-ne v4, v6, :cond_8

    .line 507
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "p"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 508
    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/TtmlNode;

    invoke-interface {v3, v6}, Landroid/media/TtmlNodeListener;->onTtmlNodeParsed(Landroid/media/TtmlNode;)V

    goto :goto_1

    .line 509
    :cond_6
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "tt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 510
    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/TtmlNode;

    invoke-interface {v3, v6}, Landroid/media/TtmlNodeListener;->onRootNodeParsed(Landroid/media/TtmlNode;)V

    .line 512
    :cond_7
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_3

    .line 506
    :cond_8
    :goto_2
    goto :goto_3

    .line 515
    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    :cond_9
    move/from16 v21, v3

    .end local v3    # "active":Z
    .restart local v21    # "active":Z
    if-ne v4, v7, :cond_a

    .line 516
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v21

    goto :goto_4

    .line 517
    :cond_a
    if-ne v4, v6, :cond_c

    .line 518
    add-int/lit8 v2, v2, -0x1

    .line 519
    if-nez v2, :cond_b

    .line 520
    const/4 v3, 0x1

    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    goto :goto_4

    .line 519
    .end local v3    # "active":Z
    .restart local v21    # "active":Z
    :cond_b
    move/from16 v3, v21

    goto :goto_4

    .line 524
    :cond_c
    :goto_3
    move/from16 v3, v21

    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    :goto_4
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 525
    .end local v4    # "eventType":I
    .end local v5    # "parent":Landroid/media/TtmlNode;
    goto/16 :goto_0

    .line 526
    :cond_d
    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;J)V
    .locals 1
    .param p1, "ttmlText"    # Ljava/lang/String;
    .param p2, "runId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 450
    iput-wide p2, p0, Landroid/media/TtmlParser;->mCurrentRunId:J

    .line 451
    invoke-direct {p0, p1}, Landroid/media/TtmlParser;->loadParser(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Landroid/media/TtmlParser;->parseTtml()V

    .line 453
    return-void
.end method

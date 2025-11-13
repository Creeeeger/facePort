.class public final Lcom/samsung/android/feature/SemFloatingFeature;
.super Ljava/lang/Object;
.source "SemFloatingFeature.java"

# interfaces
.implements Lcom/samsung/android/feature/IFloatingFeature;


# static fields
.field private static final blacklist DEFAULT_BOOLEAN_VALUE:Z = false

.field private static final blacklist DEFAULT_INT_VALUE:I = -0x1

.field private static final blacklist DEFAULT_STRING_VALUE:Ljava/lang/String; = ""

.field private static final blacklist FEATURE_XML:Ljava/lang/String; = "/system/etc/floating_feature.xml"

.field private static final blacklist LOG_ENABLED:Z

.field private static final blacklist TAG:Ljava/lang/String; = "SemFloatingFeature"

.field private static final blacklist sInstance:Lcom/samsung/android/feature/SemFloatingFeature;


# instance fields
.field private final blacklist mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 50
    const/4 v0, 0x1

    .line 52
    .local v0, "productShip":Z
    :try_start_0
    const-string/jumbo v1, "ro.product_ship"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 54
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 55
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    .line 57
    new-instance v1, Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-direct {v1}, Lcom/samsung/android/feature/SemFloatingFeature;-><init>()V

    sput-object v1, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 58
    .end local v0    # "productShip":Z
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/feature/SemFloatingFeature;->loadFeatureFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static whitelist getInstance()Lcom/samsung/android/feature/SemFloatingFeature;
    .locals 1

    .line 79
    sget-object v0, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    return-object v0
.end method

.method private blacklist loadFeatureFile()V
    .locals 10

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 272
    .local v1, "fi":Ljava/io/InputStream;
    const/4 v2, -0x1

    .line 273
    .local v2, "eventType":I
    const/4 v3, 0x0

    .line 274
    .local v3, "TagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 276
    .local v4, "TagValue":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 278
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/floating_feature.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v5, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    goto/16 :goto_4

    .line 284
    :cond_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 285
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 286
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    move-object v0, v8

    .line 287
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v8

    .line 288
    const/4 v8, 0x0

    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 289
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    move v2, v8

    .line 291
    :goto_0
    if-eq v2, v7, :cond_4

    .line 292
    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    .line 293
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_1

    .line 294
    :cond_1
    const/4 v8, 0x4

    if-ne v2, v8, :cond_3

    .line 295
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 296
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 297
    iget-object v8, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    .line 299
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v8

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v8

    .line 301
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 306
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 307
    iget-object v8, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    goto :goto_1

    .line 308
    :catch_1
    move-exception v8

    .line 309
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_1
    :try_start_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v2, v8

    .line 318
    :goto_2
    goto :goto_0

    .line 316
    :catch_2
    move-exception v8

    .line 317
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 321
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 324
    goto :goto_3

    .line 322
    :catch_3
    move-exception v7

    .line 323
    .local v7, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 331
    .end local v5    # "featureXmlFile":Ljava/io/File;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 332
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 333
    const/4 v1, 0x0

    .line 337
    goto :goto_9

    .line 335
    :catch_4
    move-exception v5

    .line 336
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 338
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 280
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v5, "featureXmlFile":Ljava/io/File;
    :cond_5
    :goto_4
    :try_start_a
    const-string v6, "Cannot read floating_feature.xml file"

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 331
    if-eqz v1, :cond_6

    .line 332
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 333
    const/4 v1, 0x0

    goto :goto_5

    .line 335
    :catch_5
    move-exception v6

    .line 336
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    goto :goto_6

    .line 337
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    nop

    .line 281
    :goto_6
    return-void

    .line 330
    .end local v5    # "featureXmlFile":Ljava/io/File;
    :catchall_0
    move-exception v5

    goto :goto_a

    .line 327
    :catch_6
    move-exception v5

    .line 328
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 331
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_7

    .line 332
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_7

    .line 325
    :catch_7
    move-exception v5

    .line 326
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 331
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_7

    .line 332
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 333
    :goto_7
    const/4 v1, 0x0

    goto :goto_8

    .line 335
    :catch_8
    move-exception v5

    .line 336
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 338
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 337
    :cond_7
    :goto_8
    nop

    .line 339
    :goto_9
    return-void

    .line 331
    :goto_a
    if-eqz v1, :cond_8

    .line 332
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 333
    const/4 v1, 0x0

    goto :goto_b

    .line 335
    :catch_9
    move-exception v6

    .line 336
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    goto :goto_c

    .line 337
    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    :goto_b
    nop

    .line 338
    :goto_c
    throw v5
.end method

.method private static blacklist loge(Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;

    .line 67
    sget-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFloatingFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method

.method private static blacklist logw(Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;

    .line 61
    sget-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFloatingFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 103
    const-string v1, "The first argument of getBoolean() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 104
    return v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `boolean getBoolean(String tag, String defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `boolean getBoolean(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string v0, "The first argument of getBoolean() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 194
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 195
    const-string v1, "The first argument of getInt() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 196
    return v0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 202
    return v0

    .line 206
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "[%s] cannot be parsed to Integer value"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 209
    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `int getInt(String tag, int defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `int getInt(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 246
    if-nez p1, :cond_0

    .line 247
    const-string v0, "The first argument of getInt() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 248
    return p2

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 254
    return p2

    .line 258
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "[%s] cannot be parsed to Integer value"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 261
    return p2
.end method

.method public blacklist getInteger(Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 182
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(Ljava/lang/String;I)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 141
    const-string v0, ""

    if-nez p1, :cond_0

    .line 142
    const-string v1, "The first argument of getString() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 143
    return-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `String getString(String tag, String defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `String getString(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 164
    if-nez p1, :cond_0

    .line 165
    const-string v0, "The first argument of getString() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 166
    const-string v0, ""

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

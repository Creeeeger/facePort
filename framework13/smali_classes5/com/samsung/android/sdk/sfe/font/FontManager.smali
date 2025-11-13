.class public Lcom/samsung/android/sdk/sfe/font/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final blacklist DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final blacklist FONTS_XML:Ljava/lang/String; = "system/etc/fonts.xml"

.field private static final blacklist FONT_DIRECTORY:Ljava/lang/String; = "fonts/"

.field private static final blacklist FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field private static final blacklist OVERRIDE_TB:Ljava/lang/String; = "ThomBrowne"

.field private static final blacklist OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/app_fonts/0/sans.loc"

.field private static final blacklist SANS_LOC_POST:Ljava/lang/String; = "/sans.loc"

.field private static final blacklist SANS_LOC_PRE:Ljava/lang/String; = "/data/app_fonts/"

.field private static final blacklist SYSTEM_FONT_DIRECTORY:Ljava/lang/String; = "/system/fonts/"

.field private static final blacklist TAG:Ljava/lang/String; = "SFFontManager"

.field private static blacklist mFlipFontPath:Ljava/lang/String;

.field private static blacklist mLastSystemFontChangedTime:J

.field private static final blacklist mMutex:Ljava/lang/Object;

.field private static blacklist mParser:Landroid/text/FontConfig;

.field private static blacklist mSetFontConfigFinished:Z

.field private static blacklist sOverrideFont:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 34
    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SetupWizard_ConfigStepSequenceType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    .line 54
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontConfig()Landroid/text/FontConfig;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    .line 64
    sget-boolean v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "SFFontManager"

    const-string/jumbo v3, "setFontConfig start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-static {v2}, Lcom/samsung/android/sdk/sfe/font/FontManager;->setFontConfig(Landroid/text/FontConfig;)V

    .line 66
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    .line 67
    if-eqz v1, :cond_1

    const-string v1, "SFFontManager"

    const-string/jumbo v2, "setFontConfig done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native blacklist SFFontManager_InsertFontData(Ljava/lang/String;[B)Z
.end method

.method private static native blacklist SFFontManager_SetFontConfig(Landroid/text/FontConfig;)Z
.end method

.method private blacklist getFlipFontFromPakage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strPackageName"    # Ljava/lang/String;
    .param p3, "strFontName"    # Ljava/lang/String;

    .line 316
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "pakageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "assetFontPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "fontName":Ljava/lang/String;
    sget-boolean v4, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlipFontFromPakage : Application pakage name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , font name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SFFontManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 324
    .local v4, "mPackageManager":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 325
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 326
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 327
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 328
    .local v7, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v7, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 330
    .local v8, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 331
    .local v9, "fileBytes":[B
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v10

    new-array v10, v10, [B

    move-object v9, v10

    .line 332
    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    .line 333
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 334
    invoke-static {v3, v9}, Lcom/samsung/android/sdk/sfe/font/FontManager;->insertFontData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    return-object v3

    .line 336
    .end local v4    # "mPackageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "assetManager":Landroid/content/res/AssetManager;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "fileBytes":[B
    :catch_0
    move-exception v4

    .line 337
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    const/4 v5, 0x0

    .line 341
    .local v5, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object v5, v7

    .line 344
    nop

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/fonts/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 347
    .local v2, "uriFont":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 348
    .local v7, "isFont":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 350
    .local v8, "fileBytes":[B
    :try_start_2
    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    move-object v7, v9

    .line 351
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    move-object v8, v9

    .line 352
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    .line 353
    invoke-static {v3, v8}, Lcom/samsung/android/sdk/sfe/font/FontManager;->insertFontData(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    nop

    .line 360
    if-eqz v7, :cond_1

    .line 361
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 363
    :catch_1
    move-exception v6

    goto :goto_1

    .line 364
    :cond_1
    :goto_0
    nop

    .line 354
    :goto_1
    return-object v3

    .line 359
    :catchall_0
    move-exception v6

    goto :goto_4

    .line 355
    :catch_2
    move-exception v9

    .line 356
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 357
    nop

    .line 360
    if-eqz v7, :cond_2

    .line 361
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 363
    :catch_3
    move-exception v10

    goto :goto_3

    .line 364
    :cond_2
    :goto_2
    nop

    .line 357
    :goto_3
    return-object v6

    .line 360
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v7, :cond_3

    .line 361
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 363
    :catch_4
    move-exception v9

    goto :goto_6

    .line 364
    :cond_3
    :goto_5
    nop

    .line 365
    :goto_6
    throw v6

    .line 342
    .end local v2    # "uriFont":Landroid/net/Uri;
    .end local v7    # "isFont":Ljava/io/InputStream;
    .end local v8    # "fileBytes":[B
    :catch_5
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/Exception;
    return-object v6
.end method

.method private blacklist getFontConfig()Landroid/text/FontConfig;
    .locals 13

    .line 76
    const-string v0, "/system/etc"

    .line 77
    .local v0, "fontXmlPath":Ljava/lang/String;
    const-string v1, "/fonts.xml"

    .line 80
    .local v1, "fontXmlName":Ljava/lang/String;
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "sales_code":Ljava/lang/String;
    const-string v3, "MYM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BKD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BNG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    :cond_0
    const-string v1, "/fonts_additional.xml"

    .line 85
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, "parser":Landroid/text/FontConfig;
    const/4 v12, 0x0

    .line 92
    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v5, "/system/fonts/"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v11}, Landroid/graphics/FontListParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 97
    if-eqz v12, :cond_2

    .line 98
    :try_start_1
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v4

    .line 102
    goto :goto_1

    .line 101
    :cond_2
    :goto_0
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 93
    :catch_1
    move-exception v4

    .line 94
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SFFontManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist on this system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v4    # "ex":Ljava/lang/Exception;
    if-eqz v12, :cond_2

    .line 98
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 104
    :goto_1
    return-object v3

    .line 97
    :goto_2
    if-eqz v12, :cond_3

    .line 98
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 100
    :catch_2
    move-exception v5

    goto :goto_4

    .line 101
    :cond_3
    :goto_3
    nop

    .line 102
    :goto_4
    throw v4
.end method

.method private static blacklist insertFontData(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "buf"    # [B

    .line 399
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->SFFontManager_InsertFontData(Ljava/lang/String;[B)Z

    move-result v0

    .line 400
    .local v0, "rtn":Z
    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->throwUncheckedException(I)V

    .line 403
    :cond_0
    return-void
.end method

.method public static blacklist isSetConfigFinished()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    return v0
.end method

.method private blacklist readFile(Ljava/io/File;)[B
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .line 370
    const-string v0, "SFFontManager"

    const/4 v1, 0x0

    .line 371
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 374
    .local v2, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 375
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v3

    .line 376
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 377
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 379
    .local v4, "read":I
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 380
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    nop

    .line 390
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    goto :goto_1

    .line 392
    :catch_0
    move-exception v5

    .line 382
    :goto_1
    return-object v0

    .line 388
    .end local v3    # "buffer":[B
    .end local v4    # "read":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 385
    :catch_1
    move-exception v3

    .line 386
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 390
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 392
    :catch_2
    move-exception v0

    .line 394
    goto :goto_3

    .line 393
    :cond_1
    :goto_2
    goto :goto_3

    .line 383
    :catch_3
    move-exception v3

    .line 384
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 389
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_1

    .line 390
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 395
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 389
    :goto_4
    if-eqz v1, :cond_2

    .line 390
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 392
    :catch_4
    move-exception v3

    goto :goto_6

    .line 393
    :cond_2
    :goto_5
    nop

    .line 394
    :goto_6
    throw v0
.end method

.method private static blacklist setFontConfig(Landroid/text/FontConfig;)V
    .locals 2
    .param p0, "fc"    # Landroid/text/FontConfig;

    .line 406
    invoke-static {p0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->SFFontManager_SetFontConfig(Landroid/text/FontConfig;)Z

    move-result v0

    .line 407
    .local v0, "rtn":Z
    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->throwUncheckedException(I)V

    .line 410
    :cond_0
    return-void
.end method

.method private static blacklist throwUncheckedException(I)V
    .locals 0
    .param p0, "errno"    # I

    .line 413
    invoke-static {p0}, Lcom/samsung/android/sdk/sfe/util/SFError;->ThrowUncheckedException(I)V

    .line 414
    return-void
.end method


# virtual methods
.method public blacklist getFlipFontPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 257
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app_fonts/0/sans.loc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "/system/fonts/ArialNarrow-Regular.ttf"

    const-string v3, "ThomBrowne"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 260
    sget-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    sput-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    .line 262
    return-object v2

    .line 264
    :cond_0
    return-object v4

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 268
    .local v5, "timeSansLocFile":J
    sget-wide v7, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    cmp-long v1, v5, v7

    const-string v7, "SFFontManager"

    if-nez v1, :cond_3

    .line 269
    sget-boolean v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System font not changed. -> flipFontPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v1

    .line 273
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontPathFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "strFontPath":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 276
    .local v9, "strPackageName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFlipFontPath - strFontPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", strPackageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v10, "default"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 280
    sget-object v7, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 281
    sput-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    .line 282
    return-object v2

    .line 285
    :cond_4
    sput-object v4, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    .line 286
    return-object v4

    .line 290
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DroidSans.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    sget-boolean v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFlipFontPath - DroidSans path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.monotype.android.font."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .end local v9    # "strPackageName":Ljava/lang/String;
    .local v2, "strPackageName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, "fontFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    .line 296
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontNameFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, "strFontName":Ljava/lang/String;
    invoke-direct {p0, p1, v2, v7}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFlipFontFromPakage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "flipFontPath":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 299
    sput-object v8, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    .line 300
    sput-wide v5, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    .line 301
    return-object v8

    .line 303
    :cond_7
    return-object v4

    .line 306
    .end local v7    # "strFontName":Ljava/lang/String;
    .end local v8    # "flipFontPath":Ljava/lang/String;
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontNameFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".ttf"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "fontName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/sfe/font/FontManager;->readFile(Ljava/io/File;)[B

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/sdk/sfe/font/FontManager;->insertFontData(Ljava/lang/String;[B)V

    .line 308
    sput-object v4, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    .line 309
    sput-wide v5, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    .line 310
    return-object v4
.end method

.method public blacklist getFontNameFlipFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 222
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 223
    return-object v0

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFullFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 234
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    return-object v4

    .line 237
    :cond_1
    return-object v0

    .line 239
    :cond_2
    const/4 v0, 0x1

    aget-object v0, v2, v0

    return-object v0
.end method

.method public blacklist getFontPathFlipFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 244
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFullFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "sx":Ljava/lang/String;
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2
.end method

.method public blacklist getFullFlipFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    if-nez p1, :cond_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    const-string v0, "default"

    .line 164
    .local v0, "systemFont":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/app_fonts/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "mtFontsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    .line 167
    return-object v0

    .line 171
    :cond_1
    const-string v2, ""

    .line 174
    .local v2, "sans_path":Ljava/lang/String;
    const-string v0, "empty"

    .line 176
    const-string v2, "/data/app_fonts/0/sans.loc"

    .line 179
    const-string v3, "empty"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "default"

    if-eqz v3, :cond_4

    .line 181
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 184
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 185
    .local v6, "string":Ljava/lang/String;
    const/4 v7, 0x0

    .line 188
    .local v7, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v8

    .line 189
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v8

    .line 190
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 193
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 194
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    nop

    .line 204
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :cond_2
    :goto_0
    goto :goto_4

    .line 206
    :catch_0
    move-exception v8

    .line 208
    goto :goto_4

    .line 202
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 198
    :catch_1
    move-exception v8

    .line 199
    .local v8, "e":Ljava/io/IOException;
    move-object v6, v4

    .line 200
    :try_start_2
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .end local v8    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_2

    .line 204
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 203
    :goto_1
    if-eqz v5, :cond_3

    .line 204
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 206
    :catch_2
    move-exception v8

    goto :goto_3

    .line 207
    :cond_3
    :goto_2
    nop

    .line 208
    :goto_3
    throw v4

    .line 196
    :catch_3
    move-exception v8

    .line 197
    .local v8, "e":Ljava/io/FileNotFoundException;
    move-object v6, v4

    .line 203
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_2

    .line 204
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 209
    :goto_4
    move-object v0, v6

    .line 215
    .end local v2    # "sans_path":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "string":Ljava/lang/String;
    .end local v7    # "br":Ljava/io/BufferedReader;
    :cond_4
    if-nez v0, :cond_5

    .line 216
    return-object v4

    .line 218
    :cond_5
    return-object v0
.end method

.method public blacklist getSystemFontName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 17
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "isBold"    # Z
    .param p3, "isItalic"    # Z

    .line 108
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Lcom/samsung/android/sdk/sfe/font/FontManager;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 109
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 110
    sget-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SFFontManager"

    const-string v6, "getSystemFontName() - Parser is null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    monitor-exit v4

    return-object v5

    .line 114
    :cond_1
    const-string v0, "SFFontManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSystemFontName fontFamily = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isItalic = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isBold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eqz v2, :cond_2

    const/16 v0, 0x2bc

    goto :goto_0

    :cond_2
    const/16 v0, 0x190

    .line 117
    .local v0, "weight":I
    :goto_0
    sget-object v6, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-virtual {v6}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$FontFamily;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_7

    aget-object v10, v6, v9

    .line 118
    .local v10, "family":Landroid/text/FontConfig$FontFamily;
    invoke-virtual {v10}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    .line 119
    const-string v11, "SFFontManager"

    const-string v12, "getSystemFontName - family.getName() is NULL - Skip."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    goto :goto_4

    .line 123
    :cond_3
    invoke-virtual {v10}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 124
    const/4 v5, 0x0

    .line 125
    .local v5, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v10}, Landroid/text/FontConfig$FontFamily;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 126
    .local v9, "f":Landroid/text/FontConfig$Font;
    move-object v5, v9

    .line 127
    invoke-virtual {v9}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v11

    if-ne v11, v0, :cond_4

    invoke-virtual {v9}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v11

    if-ne v11, v3, :cond_4

    .line 128
    goto :goto_3

    .line 125
    .end local v9    # "f":Landroid/text/FontConfig$Font;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 131
    :cond_5
    :goto_3
    invoke-virtual {v5}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    monitor-exit v4

    return-object v6

    .line 117
    .end local v5    # "font":Landroid/text/FontConfig$Font;
    .end local v10    # "family":Landroid/text/FontConfig$FontFamily;
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 135
    :cond_7
    sget-object v6, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-virtual {v6}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Alias;

    .line 137
    .local v7, "alias":Landroid/text/FontConfig$Alias;
    invoke-virtual {v7}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v7}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v7}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v9

    if-nez v9, :cond_8

    .line 138
    goto :goto_5

    .line 140
    :cond_8
    sget-object v9, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-virtual {v9}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$FontFamily;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_c

    aget-object v12, v9, v11

    .line 142
    .local v12, "family":Landroid/text/FontConfig$FontFamily;
    invoke-virtual {v12}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-virtual {v12}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 143
    goto :goto_8

    .line 145
    :cond_9
    invoke-virtual {v12}, Landroid/text/FontConfig$FontFamily;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v14, :cond_b

    aget-object v16, v13, v15

    .line 146
    .local v16, "font":Landroid/text/FontConfig$Font;
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v5

    if-ne v8, v5, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v5

    if-ne v5, v3, :cond_a

    .line 148
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    monitor-exit v4

    return-object v5

    .line 145
    .end local v16    # "font":Landroid/text/FontConfig$Font;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_7

    .line 140
    .end local v12    # "family":Landroid/text/FontConfig$FontFamily;
    :cond_b
    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_6

    .line 152
    .end local v7    # "alias":Landroid/text/FontConfig$Alias;
    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    .line 137
    .restart local v7    # "alias":Landroid/text/FontConfig$Alias;
    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    .line 153
    .end local v0    # "weight":I
    .end local v7    # "alias":Landroid/text/FontConfig$Alias;
    :cond_e
    monitor-exit v4

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

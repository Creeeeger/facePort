.class public Lcom/samsung/android/sdk/sfe/font/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

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

.field private static final blacklist sOverrideFont:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/SFEffect;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SetupWizard_ConfigStepSequenceType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontConfig()Landroid/text/FontConfig;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    sget-boolean v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SFFontManager"

    const-string v2, "setFontConfig start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-static {v1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->setFontConfig(Landroid/text/FontConfig;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    sget-boolean v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SFFontManager"

    const-string v2, "setFontConfig done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    return-void

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

.method private blacklist getFlipFontFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

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

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-static {v3, v9}, Lcom/samsung/android/sdk/sfe/font/FontManager;->insertFontData(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/sfe/font/FontManager;->insertFontData(Ljava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-object v3

    :catchall_0
    move-exception v6

    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    return-object v6
.end method

.method private blacklist getFontConfig()Landroid/text/FontConfig;
    .locals 12

    const-string v0, "/system/etc"

    const-string v1, "/fonts.xml"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    if-nez v3, :cond_0

    const-string v3, "BCK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v1, "/fonts_additional.xml"

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "/system/fonts/"

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v11}, Landroid/graphics/FontListParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exist on this system"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SFFontManager"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3
.end method

.method private static blacklist insertFontData(Ljava/lang/String;[B)V
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->SFFontManager_InsertFontData(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static blacklist isSetConfigFinished()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mSetFontConfigFinished:Z

    return v0
.end method

.method private blacklist readFile(Ljava/io/File;)[B
    .locals 7

    const-string v0, "SFFontManager"

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0x1000

    :try_start_2
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v4

    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist setFontConfig(Landroid/text/FontConfig;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->SFFontManager_SetFontConfig(Landroid/text/FontConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/sfe/font/FontManager;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private static blacklist throwUncheckedException(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/sfe/util/SFError;->ThrowUncheckedException(I)V

    return-void
.end method


# virtual methods
.method public blacklist getFlipFontPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app_fonts/0/sans.loc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "/system/fonts/ArialNarrow-Regular.ttf"

    const-string v3, "ThomBrowne"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sget-wide v7, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    cmp-long v1, v5, v7

    const-string v7, "SFFontManager"

    if-nez v1, :cond_3

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

    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontPathFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

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

    const-string v10, "default"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v7, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/samsung/android/sdk/sfe/font/FontManager;->sOverrideFont:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    sput-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v2

    :cond_4
    sput-object v4, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v4

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

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFontNameFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v2, v7}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFlipFontFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    sput-object v8, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    sput-wide v5, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    sget-object v4, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v4

    :cond_7
    return-object v4

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

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/sfe/font/FontManager;->readFile(Ljava/io/File;)[B

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/sdk/sfe/font/FontManager;->insertFontData(Ljava/lang/String;[B)V

    sput-object v4, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    sput-wide v5, Lcom/samsung/android/sdk/sfe/font/FontManager;->mLastSystemFontChangedTime:J

    sget-object v7, Lcom/samsung/android/sdk/sfe/font/FontManager;->mFlipFontPath:Ljava/lang/String;

    return-object v7
.end method

.method public blacklist getFontNameFlipFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFullFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x1

    aget-object v0, v2, v0

    return-object v0
.end method

.method public blacklist getFontPathFlipFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFullFlipFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2
.end method

.method public blacklist getFullFlipFont(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app_fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, "default"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v3, "/data/app_fonts/0/sans.loc"

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    nop

    return-object v4

    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    return-object v2
.end method

.method public blacklist getSystemFontName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Lcom/samsung/android/sdk/sfe/font/FontManager;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    const/4 v5, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/sfe/font/FontManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SFFontManager"

    const-string v6, "getSystemFontName() - Parser is null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v4

    return-object v5

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

    if-eqz v2, :cond_2

    const/16 v0, 0x2bc

    goto :goto_0

    :cond_2
    const/16 v0, 0x190

    :goto_0
    sget-object v6, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-virtual {v6}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$FontFamily;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_7

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    const-string v11, "SFFontManager"

    const-string v12, "getSystemFontName - family.getName() is NULL - Skip."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    invoke-virtual {v10}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v10}, Landroid/text/FontConfig$FontFamily;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    move-object v5, v9

    invoke-virtual {v9}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v11

    if-ne v11, v0, :cond_4

    invoke-virtual {v9}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v11

    if-ne v11, v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v5}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    monitor-exit v4

    return-object v6

    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    sget-object v6, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-virtual {v6}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Alias;

    invoke-virtual {v7}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    sget-object v9, Lcom/samsung/android/sdk/sfe/font/FontManager;->mParser:Landroid/text/FontConfig;

    invoke-virtual {v9}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$FontFamily;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_c

    aget-object v12, v9, v11

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

    goto :goto_8

    :cond_9
    invoke-virtual {v12}, Landroid/text/FontConfig$FontFamily;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v14, :cond_b

    aget-object v16, v13, v15

    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v5

    if-ne v8, v5, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v5

    if-ne v5, v3, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    monitor-exit v4

    return-object v5

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    :cond_d
    monitor-exit v4

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

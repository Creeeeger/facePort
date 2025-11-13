.class Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/wallpapertheme/ThemeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogWrapper"
.end annotation


# static fields
.field private static final blacklist LOG_FILE_MAX_COUNT:I = 0x2

.field private static final blacklist LOG_FILE_NAME:Ljava/lang/String; = "/data/log/color_palette_log%g.txt"

.field private static final blacklist LOG_FILE_SIZE_LIMIT:I = 0x2800

.field private static final blacklist TAG:Ljava/lang/String; = "LogWrapper"

.field private static final blacklist date:Ljava/util/Date;

.field private static blacklist fileHandler:Ljava/util/logging/FileHandler;

.field private static final blacklist formatter:Ljava/text/SimpleDateFormat;

.field private static blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdate()Ljava/util/Date;
    .locals 1

    sget-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->date:Ljava/util/Date;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetformatter()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->formatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS: "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->formatter:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->date:Ljava/util/Date;

    :try_start_0
    new-instance v0, Ljava/util/logging/FileHandler;

    const-string v1, "/data/log/color_palette_log%g.txt"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x2800

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->fileHandler:Ljava/util/logging/FileHandler;

    sget-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->fileHandler:Ljava/util/logging/FileHandler;

    new-instance v1, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper$1;

    invoke-direct {v1}, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    const-class v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->logger:Ljava/util/logging/Logger;

    sget-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->logger:Ljava/util/logging/Logger;

    sget-object v1, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->fileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    sget-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->logger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not use LogWrapper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getLogText()Ljava/lang/StringBuilder;
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/color_palette_log0.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string v3, "/data/log/color_palette_log1.txt"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    const/16 v8, 0xa

    if-eqz v6, :cond_1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not use getLogText : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LogWrapper"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_2
    return-object v1
.end method

.method public static blacklist save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "V %s(%d): %s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

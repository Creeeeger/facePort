.class public final Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;
.super Ljava/lang/Object;
.source "SettingsEpisodeFileLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog$SettingsEpisodeFileLogHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "SettingsEpisode"

.field private static sFileHandler:Ljava/util/logging/FileHandler;

.field private static sLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static fileLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 99
    invoke-static {}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->getInstance()Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;

    sget-object v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->sLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->getInstance()Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;

    sget-object v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const-string p0, " %s : %s\n"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog$SettingsEpisodeFileLogHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static init()V
    .locals 6

    .line 35
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 37
    new-instance v1, Ljava/util/logging/FileHandler;

    const-string v2, "/data/log/SettingsEpisode.log"

    const/16 v3, 0x4e20

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->sFileHandler:Ljava/util/logging/FileHandler;

    .line 38
    new-instance v2, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog$1;-><init>(Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v1, v2}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 49
    const-class v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->sLogger:Ljava/util/logging/Logger;

    .line 51
    sget-object v1, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->sFileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 52
    sget-object v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 53
    sget-object v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->sLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 54
    sget-object v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->TAG:Ljava/lang/String;

    const-string v1, "init success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    sget-object v1, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init failure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

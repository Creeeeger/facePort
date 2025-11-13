.class public final Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LOG_FILE_MAX_COUNT:I = 0x2

.field public static final LOG_FILE_SIZE_LIMIT:I = 0x7a120

.field public static TAG:Ljava/lang/String; = "knoxsdk/filelog"

.field public static sLogger:Ljava/util/logging/Logger;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->init()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fileLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->getInstance()Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->getInstance()Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, " "

    const-string v3, " : "

    const-string v4, "\n"

    invoke-static {v2, p0, v3, p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static fileLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->getInstance()Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->getInstance()Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, " "

    const-string v3, " : "

    const-string v4, "\n"

    invoke-static {v2, p0, v3, p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;->INSTANCE:Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static init()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/logging/FileHandler;

    const-string v2, "/data/log/knoxsdk.log"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const v5, 0x7a120

    invoke-direct {v1, v2, v5, v3, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    new-instance v2, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$1;-><init>(Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v1, v2}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    const-class v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->TAG:Ljava/lang/String;

    const-string v1, "init success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init failure : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

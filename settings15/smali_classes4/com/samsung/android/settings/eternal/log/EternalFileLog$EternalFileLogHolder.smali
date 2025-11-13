.class public abstract Lcom/samsung/android/settings/eternal/log/EternalFileLog$EternalFileLogHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/eternal/log/EternalFileLog;

    const-string v0, "Eternal/EternalFileLog"

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->mUserId:I

    new-instance v1, Ljava/util/logging/FileHandler;

    const-string v2, "/data/log/eternal.log"

    const/4 v3, 0x1

    const v4, 0x7a120

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v5, v3}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->sFileHandler:Ljava/util/logging/FileHandler;

    new-instance v2, Lcom/samsung/android/settings/eternal/log/EternalFileLog$1;

    invoke-direct {v2}, Lcom/samsung/android/settings/eternal/log/EternalFileLog$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    const-class v1, Lcom/samsung/android/settings/eternal/log/EternalFileLog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v2, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->sFileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v1, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    sget-object v1, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->sLogger:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    const-string v1, "init success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init failure : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

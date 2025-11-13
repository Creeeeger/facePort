.class public abstract Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog$KnoxRestrictionsFileLogHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "Eternal/KnoxRestrictionsFileLog"

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/logging/FileHandler;

    const-string v3, "/data/log/knoxRestrictions.log"

    const/4 v4, 0x1

    const v5, 0x7a120

    const/4 v6, 0x2

    invoke-direct {v2, v3, v5, v6, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    new-instance v3, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog$1;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog$1;-><init>(Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v2, v3}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    const-class v1, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->sLogger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v1, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    sget-object v1, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->sLogger:Ljava/util/logging/Logger;

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

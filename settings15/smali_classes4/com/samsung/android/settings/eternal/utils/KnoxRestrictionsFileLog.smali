.class public abstract Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sLogger:Ljava/util/logging/Logger;


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->fileLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fileLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget v0, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog$KnoxRestrictionsFileLogHolder;->$r8$clinit:I

    sget-object v0, Lcom/samsung/android/settings/eternal/utils/KnoxRestrictionsFileLog;->sLogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

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

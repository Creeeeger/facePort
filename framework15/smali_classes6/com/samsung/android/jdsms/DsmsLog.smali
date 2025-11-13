.class public final Lcom/samsung/android/jdsms/DsmsLog;
.super Ljava/lang/Object;
.source "DsmsLog.java"


# static fields
.field private static final blacklist ENG_BUILD:Ljava/lang/String; = "eng"

.field private static final blacklist IS_ENG:Z

.field public static final blacklist TAG:Ljava/lang/String; = "DSMS-FRAMEWORK"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/jdsms/DsmsLog;->IS_ENG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist d(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/jdsms/DsmsLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DSMS-FRAMEWORK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/jdsms/DsmsLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "DSMS-FRAMEWORK"

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/jdsms/DsmsLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DSMS-FRAMEWORK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const-string v1, "DSMS-FRAMEWORK"

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/jdsms/DsmsLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DSMS-FRAMEWORK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "DSMS-FRAMEWORK"

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/jdsms/DsmsLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist isDebuggable()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/jdsms/DsmsLog;->IS_ENG:Z

    if-eqz v0, :cond_0

    const-string v0, "DSMS-FRAMEWORK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DSMS-FRAMEWORK"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "DSMS-FRAMEWORK"

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/jdsms/DsmsLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

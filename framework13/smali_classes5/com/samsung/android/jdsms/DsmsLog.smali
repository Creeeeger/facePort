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

    .line 31
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/jdsms/DsmsLog;->IS_ENG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/samsung/android/jdsms/DsmsLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "DSMS-FRAMEWORK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/samsung/android/jdsms/DsmsLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x3

    const-string v1, "DSMS-FRAMEWORK"

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/jdsms/DsmsLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 48
    const-string v0, "DSMS-FRAMEWORK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x6

    const-string v1, "DSMS-FRAMEWORK"

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/jdsms/DsmsLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 56
    const-string v0, "DSMS-FRAMEWORK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x4

    const-string v1, "DSMS-FRAMEWORK"

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/jdsms/DsmsLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist isDebuggable()Z
    .locals 2

    .line 38
    sget-boolean v0, Lcom/samsung/android/jdsms/DsmsLog;->IS_ENG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "DSMS-FRAMEWORK"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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
    .locals 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "subtag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-static {p2, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 79
    invoke-static {p3, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 78
    const-string v1, "[%s] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 52
    const-string v0, "DSMS-FRAMEWORK"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x5

    const-string v1, "DSMS-FRAMEWORK"

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/jdsms/DsmsLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.class Landroid/widget/directwriting/DirectWritingLogger;
.super Ljava/lang/Object;
.source "DirectWritingLogger.java"


# static fields
.field static final blacklist DEBUG:Z

.field static final blacklist DEBUG_ENABLE:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 11
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    const-string v0, "DWDEBUG"

    const-string/jumbo v1, "no"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/widget/directwriting/DirectWritingLogger;->DEBUG:Z

    .line 11
    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method static blacklist logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 16
    sget-boolean v0, Landroid/widget/directwriting/DirectWritingLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method static blacklist logInfoWithDown(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 26
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

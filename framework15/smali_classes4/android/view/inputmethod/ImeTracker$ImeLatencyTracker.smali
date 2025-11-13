.class public final Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImeLatencyTracker"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;-><init>()V

    return-void
.end method

.method private blacklist shouldMonitorLatency(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x27

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .locals 2

    invoke-interface {p2}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public blacklist onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .locals 2

    invoke-interface {p3}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    return-void
.end method

.method public blacklist onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    return-void
.end method

.method public blacklist onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .locals 3

    invoke-direct {p0, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->shouldMonitorLatency(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p4}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist onRequestShow(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .locals 3

    invoke-direct {p0, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->shouldMonitorLatency(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p4}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .locals 2

    invoke-interface {p3}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    return-void
.end method

.method public blacklist onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    return-void
.end method

.method public blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .locals 2

    invoke-interface {p2}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.class public final Landroid/view/inputmethod/ImeTracker$ImeJankTracker;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImeJankTracker"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/ImeTracker$ImeJankTracker-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;-><init>()V

    return-void
.end method

.method private static blacklist getImeInsetsCujFromAnimation(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/16 v0, 0x51

    return v0

    :pswitch_1
    const/16 v0, 0x50

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist onCancelAnimation(I)V
    .locals 2

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    :cond_0
    return-void
.end method

.method public blacklist onFinishAnimation(I)V
    .locals 2

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_0
    return-void
.end method

.method public blacklist onRequestAnimation(Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;IZ)V
    .locals 6

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result v0

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getTargetSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getTargetSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    xor-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getHostPackageName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d@%d@%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

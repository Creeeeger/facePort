.class public Landroid/widget/ViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "ViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INTERVAL:I = 0xbb8

.field private static final greylist-max-o LOGD:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private greylist-max-o mAutoStart:Z

.field private greylist-max-o mFlipInterval:I

.field private final greylist-max-o mFlipRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlipInterval(Landroid/widget/ViewFlipper;)I
    .locals 0

    iget p0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlipRunnable(Landroid/widget/ViewFlipper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Landroid/widget/ViewFlipper;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    new-instance v0, Landroid/widget/ViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    new-instance v2, Landroid/widget/ViewFlipper$1;

    invoke-direct {v2, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v2, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    sget-object v2, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private greylist-max-o updateRunning()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method private greylist-max-r updateRunning(Z)V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/ViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/ViewFlipper;->showOnly(IZ)V

    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlipInterval()I
    .locals 1

    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return v0
.end method

.method public whitelist isAutoStart()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public whitelist isFlipping()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    :cond_0
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method public whitelist setAutoStart(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return-void
.end method

.method public whitelist setFlipInterval(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return-void
.end method

.method public whitelist startFlipping()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

.method public whitelist stopFlipping()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

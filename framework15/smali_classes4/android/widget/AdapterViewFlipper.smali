.class public Landroid/widget/AdapterViewFlipper;
.super Landroid/widget/AdapterViewAnimator;
.source "AdapterViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INTERVAL:I = 0x2710

.field private static final greylist-max-o LOGD:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private greylist-max-o mAdvancedByHost:Z

.field private greylist-max-o mAutoStart:Z

.field private greylist-max-o mFlipInterval:I

.field private final greylist-max-o mFlipRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Landroid/widget/AdapterViewFlipper;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x2710

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    new-instance v0, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x2710

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    new-instance v2, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v2, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    sget-object v2, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget-object v5, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/AdapterViewFlipper;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mLoopViews:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private greylist-max-o updateRunning()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method private greylist-max-o updateRunning(Z)V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/AdapterViewFlipper;->showOnly(IZ)V

    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist fyiWillBeAdvancedByHostKThx()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlipInterval()I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    return v0
.end method

.method public whitelist isAutoStart()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public whitelist isFlipping()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->startFlipping()V

    :cond_0
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method public blacklist semSetAppWidgetGetCurrentDisplayedPosition(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->semSetAppWidgetGetCurrentDisplayedPosition(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist semUsePreloadPositionIndices(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->semUsePreloadPositionIndices(Z)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method public whitelist setAutoStart(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    return-void
.end method

.method public whitelist setFlipInterval(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    return-void
.end method

.method public whitelist showNext()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    return-void
.end method

.method public whitelist showPrevious()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    return-void
.end method

.method public whitelist startFlipping()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method public whitelist stopFlipping()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    return-void
.end method

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

.field private final greylist-max-o mReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mStarted:Z

.field private greylist mUserPresent:Z

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

.method static bridge synthetic blacklist -$$Nest$fputmUserPresent(Landroid/widget/ViewFlipper;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateRunning(Landroid/widget/ViewFlipper;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateRunning(Landroid/widget/ViewFlipper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 48
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 51
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 52
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 53
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    .line 73
    new-instance v0, Landroid/widget/ViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Landroid/widget/ViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 51
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 52
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 53
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    .line 73
    new-instance v3, Landroid/widget/ViewFlipper$1;

    invoke-direct {v3, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v3, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v3, Landroid/widget/ViewFlipper$2;

    invoke-direct {v3, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v3, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 64
    sget-object v3, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 66
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 68
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 70
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method private greylist-max-o updateRunning()V
    .locals 1

    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    .line 177
    return-void
.end method

.method private greylist-max-r updateRunning(Z)V
    .locals 4
    .param p1, "flipNow"    # Z

    .line 189
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 190
    .local v0, "running":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    if-eq v0, v1, :cond_2

    .line 191
    if-eqz v0, :cond_1

    .line 192
    iget v1, p0, Landroid/widget/ViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/ViewFlipper;->showOnly(IZ)V

    .line 193
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 195
    :cond_1
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    :goto_1
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 203
    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 168
    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlipInterval()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return v0
.end method

.method public whitelist isAutoStart()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public whitelist isFlipping()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 7

    .line 89
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 104
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 103
    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 106
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 110
    :cond_0
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 114
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 117
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 119
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 123
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    .line 124
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 125
    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    .line 126
    return-void
.end method

.method public whitelist setAutoStart(Z)V
    .locals 0
    .param p1, "autoStart"    # Z

    .line 218
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 219
    return-void
.end method

.method public whitelist setFlipInterval(I)V
    .locals 0
    .param p1, "milliseconds"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 136
    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 137
    return-void
.end method

.method public whitelist startFlipping()V
    .locals 1

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 155
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 156
    return-void
.end method

.method public whitelist stopFlipping()V
    .locals 1

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 163
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 164
    return-void
.end method

.class Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;
.super Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallbackForDualDar"
.end annotation


# instance fields
.field private blacklist mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$AnbQCOzuvna-uwJx-zjIUdcrCR0(Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->lambda$onInnerLayerUnlocked$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    return-void
.end method

.method private synthetic blacklist lambda$onInnerLayerUnlocked$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;->onInnerLayerUnlocked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    return-void
.end method


# virtual methods
.method public blacklist onInnerLayerUnlockFailed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;->onInnerLayerUnlockFailed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    return-void
.end method

.method public blacklist onInnerLayerUnlocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "LockPatternUtils"

    const-string v1, "Handler is null during callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mHandler:Landroid/os/Handler;

    return-void
.end method

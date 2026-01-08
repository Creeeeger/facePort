.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mBroadCastReceiverForTSP:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$1;

.field public final mContext:Landroid/content/Context;

.field public final mFodConsumers:Ljava/util/List;

.field public final mGetUdfpsCenterPointInPortraitMode:Ljava/util/function/Supplier;

.field public mIsClientRunning:Z

.field public mIsTouchDown:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mRunnablePrintTouchInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;

.field public final mRunnableTimeoutTouchUp:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;

.field public final mShouldIgnoreSingleTap:Ljava/util/function/BooleanSupplier;

.field public final mShouldUseDelayOfSingleTap:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mRunnableTimeoutTouchUp:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mMainHandler:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mShouldUseDelayOfSingleTap:Ljava/util/function/BooleanSupplier;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mShouldIgnoreSingleTap:Ljava/util/function/BooleanSupplier;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mGetUdfpsCenterPointInPortraitMode:Ljava/util/function/Supplier;

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mFodConsumers:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final handleTouchUp(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mRunnableTimeoutTouchUp:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mMainHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mIsTouchDown:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mFodConsumers:Ljava/util/List;

    .line 14
    .line 15
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$1;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->handleOnFodTouchUp()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mIsTouchDown:Z

    .line 41
    .line 42
    return-void
.end method

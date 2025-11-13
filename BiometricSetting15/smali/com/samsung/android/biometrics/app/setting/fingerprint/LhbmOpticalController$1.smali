.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final turnOffCalibrationLightSource()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;->turnOffLightSource()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final turnOffHBM()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mVirtualHbmNode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v0, v3}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    const/16 v1, 0xd

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final turnOffLightSource()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;->localHbmControlRequest(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final turnOnCalibrationLightSource()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;->turnOnLightSource()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final turnOnHBM()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mVirtualHbmNode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v0, v3}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    const/16 v1, 0xd

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final turnOnLightSource()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LhbmOpticalController;->localHbmControlRequest(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.class public abstract Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;
.super Lcom/samsung/android/biometrics/app/setting/SysUiClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;


# instance fields
.field public final mBaseSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

.field public mDismissedReason:I

.field public final mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

.field public mIsKeyguard:Z

.field public final mSensorIconVisibilityStateHandler:Ljava/util/function/Consumer;

.field public final mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Ljava/util/function/Consumer;)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v4

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move v2, p3

    .line 9
    move-object v3, p4

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v0, p7

    .line 16
    iput-object v0, v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 17
    .line 18
    move-object/from16 v0, p8

    .line 19
    .line 20
    iput-object v0, v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mBaseSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 21
    .line 22
    move-object/from16 v0, p9

    .line 23
    .line 24
    iput-object v0, v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 25
    .line 26
    move-object/from16 v0, p10

    .line 27
    .line 28
    iput-object v0, v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorIconVisibilityStateHandler:Ljava/util/function/Consumer;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onSensorIconVisibilityChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mSensorIconVisibilityStateHandler:Ljava/util/function/Consumer;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onUserCancel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDismissedReason:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDismissedReason:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

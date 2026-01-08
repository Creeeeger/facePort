.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;
.super Lcom/samsung/android/biometrics/app/setting/SysUiClient;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mCalWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;

.field public final swipeDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p3

    .line 4
    move-object v3, p4

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p6

    .line 7
    move-object v6, p7

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mRawExtraInfo:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string p2, "KEY_FP_GESTURE_DIRECTION"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;->swipeDirection:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final prepareWindows()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;->swipeDirection:I

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;->mCalWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

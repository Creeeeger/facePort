.class public final synthetic Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 18
    .line 19
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 20
    .line 21
    if-ne v2, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledOnAod()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 32
    .line 33
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 34
    .line 35
    const/16 v0, 0x3e9

    .line 36
    .line 37
    if-ne p0, v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :cond_3
    :goto_1
    return v1

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 43
    .line 44
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsUltrasonic:Z

    .line 45
    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsOptical:Z

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 53
    .line 54
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 55
    .line 56
    if-nez p0, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    const/4 p0, 0x0

    .line 60
    goto :goto_3

    .line 61
    :cond_5
    :goto_2
    const/4 p0, 0x1

    .line 62
    :goto_3
    return p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

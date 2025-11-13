.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->isSensorIconShown()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mKeyguardWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;->showSensorIcon()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

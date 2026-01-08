.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "onLimitDisplayStateChanged: "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ", "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->getTag()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "BSS_HbmController"

    .line 41
    .line 42
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 46
    .line 47
    instance-of v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;

    .line 52
    .line 53
    invoke-interface {v0, p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;->onLimitDisplayStateChanged(Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

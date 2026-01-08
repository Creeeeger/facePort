.class public final synthetic Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, -0x1

    .line 9
    :try_start_0
    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onError(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "showBiometricDialog: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "BSS_SysUiManager"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    return-void
.end method

.class public final Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;
.super Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static isRestricted()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method


# virtual methods
.method public final hideBiometricDialog(III)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onBiometricAuthenticated(IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-virtual {p0, p1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 26
    .line 27
    const/4 p1, 0x4

    .line 28
    invoke-virtual {p0, p1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final onBiometricError(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 p1, 0x6

    .line 13
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onBiometricHelp(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 p1, 0x5

    .line 13
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final sendCommand(IIILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 13
    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    new-instance p4, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 26
    .line 27
    const/4 p1, 0x7

    .line 28
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setBiometricTheme(ILjava/lang/String;[BLjava/io/FileDescriptor;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleBiometricTheme(ILjava/lang/String;Ljava/io/FileDescriptor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final showBiometricDialog(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    .locals 13

    move-object v0, p0

    move v9, p1

    move v10, p2

    move-object/from16 v11, p4

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez v10, :cond_1

    .line 2
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v11, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_1
    new-instance v12, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;

    move-object v1, v12

    move v2, p2

    move/from16 v3, p6

    move v4, p1

    move-wide/from16 v5, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;-><init>(IIIJLjava/lang/String;Landroid/os/Bundle;)V

    move/from16 v1, p5

    .line 4
    iput-boolean v1, v12, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mRequireTouchBlock:Z

    move-object/from16 v1, p10

    .line 5
    iput-object v1, v12, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 6
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 7
    iput-object v12, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 8
    iput-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 9
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

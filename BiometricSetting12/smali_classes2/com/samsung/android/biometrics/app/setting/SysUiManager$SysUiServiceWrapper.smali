.class final Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;
.super Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;
.source "SysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SysUiServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V

    return-void
.end method

.method private isRestricted()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public hideBiometricDialog(III)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricAuthenticated(IIZLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1300(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v2

    invoke-virtual {v2, v1, p4}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onBiometricError(IIIILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricHelp(IIIILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendCommand(IIILandroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setBiometricTheme(ILjava/lang/String;[BLjava/io/FileDescriptor;)V
    .locals 1

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$900(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->setCustomTouchEffect(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    :cond_0
    return-void
.end method

.method public showBiometricDialog(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

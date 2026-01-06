.class Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;
.super Ljava/lang/Object;
.source "SysUiManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDisplayChanged$0$SysUiManager$DisplayStateManager$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->setDisplayStateLimit(Z)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1002(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;Landroid/view/Display;)Landroid/view/Display;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1000(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "BSS_SysUiManager"

    const-string v1, "DisplayStateManager.onDisplayChanged: default display is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1000(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1202(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;I)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1300(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1300(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1200(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleDisplayChanged(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1400(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1200(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1200(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1402(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;I)I

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1200(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;->this$1:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1200(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

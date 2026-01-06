.class Lcom/samsung/android/biometrics/app/setting/SysUiManager$2;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "SysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "BSS_SysUiManager"

    const-string v1, "onCoverSwitchStateChanged: open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1300(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$1300(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleOnCoverOpen(Z)V

    :cond_0
    return-void
.end method

.class public Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;
.super Landroid/app/Service;
.source "BiometricsUIService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_BiometricsUIService"


# instance fields
.field private mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->getSysUiServiceWrapper()Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_BiometricsUIService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    const-string v0, "onConfigurationChanged : SysUiManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->destroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

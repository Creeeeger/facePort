.class public final synthetic Lcom/samsung/android/biometrics/app/setting/BiometricsUIService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Init configuration : "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "BSS_BiometricsUIService"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricsUIService;->mSysUiManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->init()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

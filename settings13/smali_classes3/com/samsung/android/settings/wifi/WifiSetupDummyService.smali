.class public Lcom/samsung/android/settings/wifi/WifiSetupDummyService;
.super Landroid/app/Service;
.source "WifiSetupDummyService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p0, "DummyService"

    const-string p1, "onBind"

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string p0, "DummyService"

    const-string v0, "onCreate"

    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string p0, "DummyService"

    const-string v0, "onDestroy"

    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public abstract Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub;
.super Landroid/os/Binder;
.source "IService.java"

# interfaces
.implements Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.sdk.smartthings.headless.companionservice.IService"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;
    .locals 1

    .line 197
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;

    return-object v0
.end method

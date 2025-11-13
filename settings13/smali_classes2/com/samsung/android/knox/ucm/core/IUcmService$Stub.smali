.class public abstract Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;
.super Landroid/os/Binder;
.source "IUcmService.java"

# interfaces
.implements Lcom/samsung/android/knox/ucm/core/IUcmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/core/IUcmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/IUcmService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.ucm.core.IUcmService"

    .line 427
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    instance-of v1, v0, Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-eqz v1, :cond_1

    .line 429
    check-cast v0, Lcom/samsung/android/knox/ucm/core/IUcmService;

    return-object v0

    .line 431
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

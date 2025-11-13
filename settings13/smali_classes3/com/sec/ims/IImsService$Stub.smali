.class public abstract Lcom/sec/ims/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/sec/ims/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.ims.IImsService"

    .line 496
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    instance-of v1, v0, Lcom/sec/ims/IImsService;

    if-eqz v1, :cond_1

    .line 498
    check-cast v0, Lcom/sec/ims/IImsService;

    return-object v0

    .line 500
    :cond_1
    new-instance v0, Lcom/sec/ims/IImsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

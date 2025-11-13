.class public interface abstract Lcom/sec/rll/IExtControlDeviceService;
.super Ljava/lang/Object;
.source "IExtControlDeviceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/rll/IExtControlDeviceService$Stub;,
        Lcom/sec/rll/IExtControlDeviceService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.sec.rll.IExtControlDeviceService"


# virtual methods
.method public abstract blacklist getStatus(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setStatus(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

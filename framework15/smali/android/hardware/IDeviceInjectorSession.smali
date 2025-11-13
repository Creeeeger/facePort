.class public interface abstract Landroid/hardware/IDeviceInjectorSession;
.super Ljava/lang/Object;
.source "IDeviceInjectorSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IDeviceInjectorSession$Stub;,
        Landroid/hardware/IDeviceInjectorSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.IDeviceInjectorSession"


# virtual methods
.method public abstract blacklist setDeviceInjectorPending(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopDeviceInjector()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

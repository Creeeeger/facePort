.class public interface abstract Landroid/hardware/IDeviceInjectorCallback;
.super Ljava/lang/Object;
.source "IDeviceInjectorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IDeviceInjectorCallback$Stub;,
        Landroid/hardware/IDeviceInjectorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.IDeviceInjectorCallback"

.field public static final blacklist ERROR_INJECTION_INVALID_ERROR:I = -0x1

.field public static final blacklist ERROR_INJECTION_SERVICE:I = 0x1

.field public static final blacklist ERROR_INJECTION_SESSION:I = 0x0

.field public static final blacklist ERROR_INJECTION_UNSUPPORTED:I = 0x2


# virtual methods
.method public abstract blacklist onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionCreated(Landroid/hardware/IDeviceInjectorSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
.super Ljava/lang/Object;
.source "ISemInputDeviceRemoteServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;,
        Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hardware.secinputdev.ISemInputDeviceRemoteServiceCallback"


# virtual methods
.method public abstract blacklist deliveryLastData([IF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deliveryRawdata([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

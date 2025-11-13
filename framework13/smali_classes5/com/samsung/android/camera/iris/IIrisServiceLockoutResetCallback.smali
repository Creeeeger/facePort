.class public interface abstract Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;
.super Ljava/lang/Object;
.source "IIrisServiceLockoutResetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;,
        Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisServiceLockoutResetCallback"


# virtual methods
.method public abstract blacklist onLockoutReset(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

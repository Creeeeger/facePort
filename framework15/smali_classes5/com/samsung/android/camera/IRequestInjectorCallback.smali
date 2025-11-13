.class public interface abstract Lcom/samsung/android/camera/IRequestInjectorCallback;
.super Ljava/lang/Object;
.source "IRequestInjectorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;,
        Lcom/samsung/android/camera/IRequestInjectorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.IRequestInjectorCallback"


# virtual methods
.method public abstract blacklist onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;Ljava/lang/String;IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/samsung/android/camera/ICameraServiceWorker;
.super Ljava/lang/Object;
.source "ICameraServiceWorker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/ICameraServiceWorker$Stub;,
        Lcom/samsung/android/camera/ICameraServiceWorker$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.ICameraServiceWorker"

.field public static final blacklist LOGGER_CAMERA_APPLICATION_EVENT:I = 0x6

.field public static final blacklist LOGGER_CAMERA_EVENT:I = 0x0

.field public static final blacklist LOGGER_DATABASE_EVENT:I = 0x7

.field public static final blacklist LOGGER_FOLD_EVENT:I = 0x4

.field public static final blacklist LOGGER_POST_PROCESS_EVENT:I = 0x5

.field public static final blacklist LOGGER_REQUEST_INJECTOR_SERVICE:I = 0x2

.field public static final blacklist LOGGER_SHAKE_EVENT_LISTENER:I = 0x1

.field public static final blacklist LOGGER_VISION_SERVER_RECEIVER:I = 0x3

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "media.camera.worker"

.field public static final blacklist THIRD_PARTY_INTENT_IMAGE_CAPTURE_MAX_RES:I = 0x4

.field public static final blacklist THIRD_PARTY_INTENT_PRECAPTURE_TRIGGER:I = 0x3

.field public static final blacklist THIRD_PARTY_INTENT_PREVIEW_MAX_RES:I = 0x2

.field public static final blacklist THIRD_PARTY_INTENT_VIDEO_DUR:I = 0x6

.field public static final blacklist THIRD_PARTY_INTENT_VIDEO_MAX_RES:I = 0x5

.field public static final blacklist THIRD_PARTY_LENS_ID:I = 0x1


# virtual methods
.method public abstract blacklist acquireRequestInjector()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceInjectorOverride(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceOrientationForDeviceInjector(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyCameraSessionEvent(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist pingForUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist queryPackageName(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setDeviceOrientationListener(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist storeLoggingData(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

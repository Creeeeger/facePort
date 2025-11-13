.class public Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;
.super Ljava/lang/Object;
.source "CameraServiceWorkerManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraServiceWorkerManager"


# instance fields
.field private blacklist binder:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "CameraServiceWorkerManager"

    const-string v1, "binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public blacklist getMyBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;->binder:Landroid/os/IBinder;

    return-object v0
.end method

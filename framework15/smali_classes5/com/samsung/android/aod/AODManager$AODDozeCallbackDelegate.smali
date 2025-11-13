.class Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;
.super Lcom/samsung/android/aod/IAODDozeCallback$Stub;
.source "AODManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODDozeCallbackDelegate"
.end annotation


# instance fields
.field private blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/aod/AODManager$AODDozeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Lcom/samsung/android/aod/AODManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->this$0:Lcom/samsung/android/aod/AODManager;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    iget-object p1, p1, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public blacklist onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$3;-><init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;Lcom/samsung/android/aod/AODToast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onDozeAcquired()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$1;-><init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onDozeReleased()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;-><init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

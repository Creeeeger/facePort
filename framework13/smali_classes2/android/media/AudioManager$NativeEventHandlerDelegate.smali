.class Landroid/media/AudioManager$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "callback"    # Landroid/media/AudioDeviceCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 8606
    iput-object p1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8609
    if-eqz p3, :cond_0

    .line 8610
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    goto :goto_0

    .line 8613
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 8617
    .restart local v0    # "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    .line 8619
    new-instance v1, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;)V

    iput-object v1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1

    .line 8643
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 8645
    :goto_1
    return-void
.end method


# virtual methods
.method greylist-max-o getHandler()Landroid/os/Handler;
    .locals 1

    .line 8648
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

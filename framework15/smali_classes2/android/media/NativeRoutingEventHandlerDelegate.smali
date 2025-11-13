.class Landroid/media/NativeRoutingEventHandlerDelegate;
.super Ljava/lang/Object;
.source "NativeRoutingEventHandlerDelegate.java"


# instance fields
.field private greylist-max-o mAudioRouting:Landroid/media/AudioRouting;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioRouting(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting;
    .locals 0

    iget-object p0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mAudioRouting:Landroid/media/AudioRouting;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnRoutingChangedListener(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting$OnRoutingChangedListener;
    .locals 0

    iget-object p0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mAudioRouting:Landroid/media/AudioRouting;

    iput-object p2, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    iput-object p3, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method greylist-max-o notifyClient()V
    .locals 2

    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/NativeRoutingEventHandlerDelegate$1;

    invoke-direct {v1, p0}, Landroid/media/NativeRoutingEventHandlerDelegate$1;-><init>(Landroid/media/NativeRoutingEventHandlerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

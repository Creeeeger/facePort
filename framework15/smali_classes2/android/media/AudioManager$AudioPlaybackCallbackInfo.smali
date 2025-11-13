.class Landroid/media/AudioManager$AudioPlaybackCallbackInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioPlaybackCallbackInfo"
.end annotation


# instance fields
.field final greylist-max-o mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

.field final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    iput-object p2, p0, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    return-void
.end method

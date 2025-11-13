.class public final Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mRccCompat:Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;

.field public final synthetic this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->this$0:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;

    invoke-direct {v1, v0, p2}, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->mRccCompat:Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;

    iput-object p0, v1, Landroidx/mediarouter/media/RemoteControlClientCompat;->mVolumeCallback:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    iget-object p0, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-virtual {v1, p0}, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->setPlaybackInfo(Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;)V

    return-void
.end method

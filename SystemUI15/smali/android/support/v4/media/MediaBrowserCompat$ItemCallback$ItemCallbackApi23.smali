.class public final Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$ItemCallbackApi23;
.super Landroid/media/browse/MediaBrowser$ItemCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$ItemCallbackApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$ItemCallbackApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 2

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$ItemCallbackApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    sget-object v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/browse/MediaBrowser$MediaItem;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->fromMediaDescription(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

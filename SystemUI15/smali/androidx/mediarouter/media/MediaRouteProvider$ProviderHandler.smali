.class public final Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/media/MediaRouteProvider;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;->this$0:Landroidx/mediarouter/media/MediaRouteProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;->this$0:Landroidx/mediarouter/media/MediaRouteProvider;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouteProvider;->mPendingDiscoveryRequestChange:Z

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider;->onDiscoveryRequestChanged(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouteProvider;->mPendingDescriptorChange:Z

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider;->mCallback:Landroidx/mediarouter/media/MediaRouteProvider$Callback;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider;->mDescriptor:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    invoke-virtual {p1, p0, v0}, Landroidx/mediarouter/media/MediaRouteProvider$Callback;->onDescriptorChanged(Landroidx/mediarouter/media/MediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    :cond_2
    :goto_0
    return-void
.end method

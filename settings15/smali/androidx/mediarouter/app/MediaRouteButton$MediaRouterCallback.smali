.class public final Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteButton;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteButton;

    return-void
.end method


# virtual methods
.method public final onProviderAdded()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method public final onProviderChanged()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method public final onProviderRemoved()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method public final onRouteAdded()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method public final onRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method public final onRouteRemoved()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method public final onRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method public final onRouteUnselected()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

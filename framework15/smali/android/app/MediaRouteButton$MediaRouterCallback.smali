.class final Landroid/app/MediaRouteButton$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/MediaRouteButton;


# direct methods
.method private constructor blacklist <init>(Landroid/app/MediaRouteButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton$MediaRouterCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;)V

    return-void
.end method


# virtual methods
.method public whitelist onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    return-void
.end method

.method public whitelist onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    return-void
.end method

.method public whitelist onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    return-void
.end method

.method public whitelist onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    return-void
.end method

.method public whitelist onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    return-void
.end method

.method public whitelist onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 1

    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    return-void
.end method

.method public whitelist onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    return-void
.end method

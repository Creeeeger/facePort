.class public final Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;
.super Landroid/media/MediaRouter2$RouteCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/media/MediaRoute2Provider;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-direct {p0}, Landroid/media/MediaRouter2$RouteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRoutesAdded(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRoute2Provider;->refreshRoutes()V

    return-void
.end method

.method public final onRoutesChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRoute2Provider;->refreshRoutes()V

    return-void
.end method

.method public final onRoutesRemoved(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRoute2Provider;->refreshRoutes()V

    return-void
.end method

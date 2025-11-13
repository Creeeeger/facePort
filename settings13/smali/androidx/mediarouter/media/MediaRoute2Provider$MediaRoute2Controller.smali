.class Landroidx/mediarouter/media/MediaRoute2Provider$MediaRoute2Controller;
.super Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.source "MediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaRoute2Controller"
.end annotation


# instance fields
.field final mRouteGroupId:Ljava/lang/String;

.field final mRouteId:Ljava/lang/String;

.field final synthetic this$0:Landroidx/mediarouter/media/MediaRoute2Provider;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$MediaRoute2Controller;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;-><init>()V

    .line 259
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRoute2Provider$MediaRoute2Controller;->mRouteId:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRoute2Provider$MediaRoute2Controller;->mRouteGroupId:Ljava/lang/String;

    return-void
.end method

.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RouteComparator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final sInstance:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RouteComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RouteComparator;

    invoke-direct {v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RouteComparator;-><init>()V

    sput-object v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RouteComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    iget-object p1, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

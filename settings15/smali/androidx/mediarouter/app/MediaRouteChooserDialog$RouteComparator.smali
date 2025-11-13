.class public final Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final sInstance:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;

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

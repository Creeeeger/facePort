.class public abstract Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
.super Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mExecutor:Ljava/util/concurrent/Executor;

.field public mListener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

.field public final mLock:Ljava/lang/Object;

.field public mPendingGroupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field public mPendingRoutes:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getGroupableSelectionTitle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransferableSectionTitle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onAddMemberRoute(Ljava/lang/String;)V
.end method

.method public abstract onRemoveMemberRoute(Ljava/lang/String;)V
.end method

.method public abstract onUpdateMemberRoutes(Ljava/util/List;)V
.end method

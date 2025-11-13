.class public final Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIsGroupable:Z

.field public final mIsTransferable:Z

.field public final mIsUnselectable:Z

.field public final mMediaRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field public final mSelectionState:I


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mMediaRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    iput p2, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mSelectionState:I

    iput-boolean p3, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsUnselectable:Z

    iput-boolean p4, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsGroupable:Z

    iput-boolean p5, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsTransferable:Z

    return-void
.end method

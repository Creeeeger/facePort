.class public final Landroidx/navigation/NavDestination$DeepLinkMatch;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final destination:Landroidx/navigation/NavDestination;

.field public final hasMatchingAction:Z

.field public final isExactDeepLink:Z

.field public final matchingArgs:Landroid/os/Bundle;

.field public final matchingPathSegments:I

.field public final mimeTypeMatchLevel:I


# direct methods
.method public constructor <init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    iput-object p2, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    iput-boolean p3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    iput p4, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingPathSegments:I

    iput-boolean p5, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    iput p6, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mimeTypeMatchLevel:I

    return-void
.end method


# virtual methods
.method public final compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I
    .locals 4

    iget-boolean v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v2, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->isExactDeepLink:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingPathSegments:I

    iget v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingPathSegments:I

    sub-int/2addr v0, v3

    if-lez v0, :cond_2

    return v1

    :cond_2
    if-gez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-nez v3, :cond_4

    return v1

    :cond_4
    if-nez v0, :cond_5

    iget-object v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-eqz v3, :cond_5

    return v2

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    iget-object v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    return v1

    :cond_6
    if-gez v0, :cond_7

    return v2

    :cond_7
    iget-boolean v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    if-eqz v0, :cond_8

    iget-boolean v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    if-nez v3, :cond_8

    return v1

    :cond_8
    if-nez v0, :cond_9

    iget-boolean v0, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingAction:Z

    if-eqz v0, :cond_9

    return v2

    :cond_9
    iget p0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mimeTypeMatchLevel:I

    iget p1, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mimeTypeMatchLevel:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/navigation/NavDestination$DeepLinkMatch;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    move-result p0

    return p0
.end method

.class final Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/compose/material3/PinnedScrollBehavior;

    iget-object p0, p0, Landroidx/compose/material3/PinnedScrollBehavior;->state:Landroidx/compose/material3/TopAppBarState;

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v2

    cmpg-float v2, v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    int-to-float v2, v2

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v3

    iget-object p0, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p0

    sub-float/2addr v3, p0

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p0

    invoke-static {v3, p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    div-float/2addr p0, v1

    sub-float/2addr v2, p0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const p0, 0x3c23d70a    # 0.01f

    cmpl-float p0, v2, p0

    if-lez p0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

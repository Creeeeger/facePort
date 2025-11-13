.class public final Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/animation/core/Animations;


# instance fields
.field public final anims:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationVector;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationVector;",
            "FF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v2, v0

    check-cast v2, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v2, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    new-instance v3, Landroidx/compose/animation/core/FloatSpringSpec;

    invoke-virtual {p1, v2}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v2

    invoke-direct {v3, p2, p3, v2}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;->anims:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get(I)Landroidx/compose/animation/core/FloatAnimationSpec;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;->anims:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/FloatSpringSpec;

    return-object p0
.end method

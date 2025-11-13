.class public abstract Landroidx/compose/runtime/MovableContentKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final movableContentOf(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;
    .locals 3

    new-instance v0, Landroidx/compose/runtime/MovableContent;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/MovableContent;-><init>(Lkotlin/jvm/functions/Function3;)V

    new-instance p0, Landroidx/compose/runtime/MovableContentKt$movableContentOf$2;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/MovableContentKt$movableContentOf$2;-><init>(Landroidx/compose/runtime/MovableContent;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x19e91a55

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    return-object v0
.end method

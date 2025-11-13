.class public abstract Landroidx/compose/runtime/MovableContentKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final movableContentOf(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;
    .locals 4

    new-instance v0, Landroidx/compose/runtime/MovableContent;

    new-instance v1, Landroidx/compose/runtime/MovableContentKt$movableContentOf$movableContent$1;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/MovableContentKt$movableContentOf$movableContent$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x4055477d

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-direct {v0, p0}, Landroidx/compose/runtime/MovableContent;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance p0, Landroidx/compose/runtime/MovableContentKt$movableContentOf$1;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/MovableContentKt$movableContentOf$1;-><init>(Landroidx/compose/runtime/MovableContent;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x26495411

    invoke-direct {v0, v1, v3, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    return-object v0
.end method

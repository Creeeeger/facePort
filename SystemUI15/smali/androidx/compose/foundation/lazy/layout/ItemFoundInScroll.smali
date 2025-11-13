.class final Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;
.super Ljava/util/concurrent/CancellationException;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final itemOffset:I

.field private final previousAnimation:Landroidx/compose/animation/core/AnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroidx/compose/animation/core/AnimationState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/animation/core/AnimationState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->itemOffset:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->previousAnimation:Landroidx/compose/animation/core/AnimationState;

    return-void
.end method


# virtual methods
.method public final getItemOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->itemOffset:I

    return p0
.end method

.method public final getPreviousAnimation()Landroidx/compose/animation/core/AnimationState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->previousAnimation:Landroidx/compose/animation/core/AnimationState;

    return-object p0
.end method

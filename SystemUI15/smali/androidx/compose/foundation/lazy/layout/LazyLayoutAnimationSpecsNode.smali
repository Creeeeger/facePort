.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# instance fields
.field public fadeInSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public fadeOutSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;->fadeInSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;->placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;->fadeOutSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method


# virtual methods
.method public final modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

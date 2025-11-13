.class public final Landroidx/compose/foundation/MagnifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final clippingEnabled:Z

.field public final cornerRadius:F

.field public final elevation:F

.field public final magnifierCenter:Lkotlin/jvm/functions/Function1;

.field public final onSizeChanged:Lkotlin/jvm/functions/Function1;

.field public final platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

.field public final size:J

.field public final sourceCenter:Lkotlin/jvm/functions/Function1;

.field public final useTextDefault:Z

.field public final zoom:F


# direct methods
.method private constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "FZJFFZ",
            "Landroidx/compose/foundation/PlatformMagnifierFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    iput-boolean p5, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    iput-wide p6, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    iput p8, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    iput p9, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    iput-boolean p10, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    iput-object p11, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const/high16 v1, 0x7fc00000    # Float.NaN

    move v7, v1

    goto :goto_2

    :cond_2
    move/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v8, v1

    goto :goto_3

    :cond_3
    move/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/unit/DpSize;->Unspecified:J

    move-wide v9, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    move v11, v1

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    move v12, v1

    goto :goto_6

    :cond_6
    move/from16 v12, p9

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v13, v0

    goto :goto_7

    :cond_7
    move/from16 v13, p10

    :goto_7
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v14, p11

    invoke-direct/range {v3 .. v15}, Landroidx/compose/foundation/MagnifierElement;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroidx/compose/foundation/MagnifierElement;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 14

    new-instance v13, Landroidx/compose/foundation/MagnifierNode;

    iget-boolean v10, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    iget-object v11, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    iget v4, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    iget-boolean v5, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    iget-wide v6, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    iget v8, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    iget v9, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/MagnifierNode;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/MagnifierElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/MagnifierElement;

    iget-object v1, p1, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    iget v3, p1, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_a

    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    sget-object v1, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    iget-wide v3, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    iget-wide v5, p1, Landroidx/compose/foundation/MagnifierElement;->size:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    iget v3, p1, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    iget v3, p1, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iget-object p1, p1, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0

    :cond_a
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    invoke-static {v3, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-boolean v3, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    sget-object v3, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    iget-wide v3, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    iget v3, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    invoke-static {v3, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v3, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    invoke-static {v3, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-boolean v3, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/MagnifierNode;

    iget v2, v1, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    iget-wide v3, v1, Landroidx/compose/foundation/MagnifierNode;->size:J

    iget v5, v1, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    iget-boolean v6, v1, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    iget v7, v1, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    iget-boolean v8, v1, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    iget-object v9, v1, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iget-object v10, v1, Landroidx/compose/foundation/MagnifierNode;->view:Landroid/view/View;

    iget-object v11, v1, Landroidx/compose/foundation/MagnifierNode;->density:Landroidx/compose/ui/unit/Density;

    iget-object v12, v0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    iput-object v12, v1, Landroidx/compose/foundation/MagnifierNode;->sourceCenter:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    iput-object v12, v1, Landroidx/compose/foundation/MagnifierNode;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    iget v12, v0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    iput v12, v1, Landroidx/compose/foundation/MagnifierNode;->zoom:F

    iget-boolean v13, v0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    iput-boolean v13, v1, Landroidx/compose/foundation/MagnifierNode;->useTextDefault:Z

    iget-wide v14, v0, Landroidx/compose/foundation/MagnifierElement;->size:J

    iput-wide v14, v1, Landroidx/compose/foundation/MagnifierNode;->size:J

    move-object/from16 p1, v11

    iget v11, v0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    iput v11, v1, Landroidx/compose/foundation/MagnifierNode;->cornerRadius:F

    move-object/from16 v16, v10

    iget v10, v0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    iput v10, v1, Landroidx/compose/foundation/MagnifierNode;->elevation:F

    move-object/from16 v17, v9

    iget-boolean v9, v0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    iput-boolean v9, v1, Landroidx/compose/foundation/MagnifierNode;->clippingEnabled:Z

    move/from16 v18, v8

    iget-object v8, v0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    iput-object v8, v1, Landroidx/compose/foundation/MagnifierNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iput-object v0, v1, Landroidx/compose/foundation/MagnifierNode;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNode_androidKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object v8

    move-object/from16 p0, v8

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    move-object/from16 v19, v8

    iget-object v8, v1, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;

    if-eqz v8, :cond_3

    sget-object v8, Landroidx/compose/foundation/Magnifier_androidKt;->MagnifierPositionInRoot:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v2, v12, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifierFactory;->getCanUpdateZoom()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    sget-object v2, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    cmp-long v2, v14, v3

    if-nez v2, :cond_2

    invoke-static {v11, v5}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v10, v7}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v13, v6, :cond_2

    move/from16 v2, v18

    if-ne v9, v2, :cond_2

    move-object/from16 v2, v17

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v2, v19

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/foundation/MagnifierNode;->recreateMagnifier()V

    :cond_3
    invoke-virtual {v1}, Landroidx/compose/foundation/MagnifierNode;->updateMagnifier()V

    return-void
.end method

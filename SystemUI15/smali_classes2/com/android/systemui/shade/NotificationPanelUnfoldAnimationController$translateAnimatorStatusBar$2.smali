.class final Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;
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
.field final synthetic $progressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

.field final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;->this$0:Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;->$progressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;

    new-instance v9, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    sget-object v10, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->END:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;->this$0:Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->filterShade:Lkotlin/jvm/functions/Function0;

    const v3, 0x7f0a0b42

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;->this$0:Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->filterShade:Lkotlin/jvm/functions/Function0;

    const v3, 0x7f0a0920

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v11

    move-object v4, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;->this$0:Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->filterShade:Lkotlin/jvm/functions/Function0;

    const v3, 0x7f0a0258

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v12

    move-object v4, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    sget-object v3, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->START:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;->this$0:Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->filterShade:Lkotlin/jvm/functions/Function0;

    const v14, 0x7f0a02a2

    const/16 v17, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object v13, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;->this$0:Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->filterShade:Lkotlin/jvm/functions/Function0;

    const v14, 0x7f0a0339

    const/16 v17, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object v13, v4

    move-object v15, v3

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v9, v11, v12, v2, v4}, [Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;->$progressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;-><init>(Ljava/util/Set;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    return-object v1
.end method

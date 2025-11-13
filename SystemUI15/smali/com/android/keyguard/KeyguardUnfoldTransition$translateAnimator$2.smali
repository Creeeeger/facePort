.class final Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;
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
.field final synthetic $unfoldProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUnfoldTransition;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;->$unfoldProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    sget-object v9, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->START:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterKeyguard:Lkotlin/jvm/functions/Function0;

    sget-object v3, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2$smartSpaceViews$1;->INSTANCE:Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2$smartSpaceViews$1;

    const v4, 0x7f0a05c8

    invoke-direct {v1, v4, v9, v2, v3}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    new-instance v10, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;

    new-instance v11, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    iget-object v5, v2, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterKeyguardAndSplitShadeOnly:Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const v3, 0x7f0a0658

    const/4 v6, 0x0

    move-object v2, v11

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    iget-object v5, v2, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterKeyguard:Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const v3, 0x7f0a0657

    const/4 v6, 0x0

    move-object v2, v12

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    sget-object v15, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->END:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterKeyguardAndSplitShadeOnly:Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x8

    const/16 v19, 0x0

    const v14, 0x7f0a0826

    const/16 v17, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v11, v12, v2}, [Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;->$unfoldProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-direct {v10, v1, v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;-><init>(Ljava/util/Set;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    return-object v10
.end method

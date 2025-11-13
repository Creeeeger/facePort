.class final Lcom/android/keyguard/KeyguardUnfoldTransition$shortcutButtonsAnimator$2;
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition$shortcutButtonsAnimator$2;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUnfoldTransition$shortcutButtonsAnimator$2;->$unfoldProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;

    new-instance v9, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    sget-object v4, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->START:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUnfoldTransition$shortcutButtonsAnimator$2;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    iget-object v5, v2, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterKeyguard:Lkotlin/jvm/functions/Function0;

    const v3, 0x7f0a0c09

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    sget-object v12, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->END:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUnfoldTransition$shortcutButtonsAnimator$2;->this$0:Lcom/android/keyguard/KeyguardUnfoldTransition;

    iget-object v13, v3, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterKeyguard:Lkotlin/jvm/functions/Function0;

    const v11, 0x7f0a040f

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;-><init>(ILcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v9, v2}, [Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewIdToTranslate;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUnfoldTransition$shortcutButtonsAnimator$2;->$unfoldProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;-><init>(Ljava/util/Set;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    return-object v1
.end method

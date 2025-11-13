.class public final Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final synthetic $keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$1$1;->this$0:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$1$1;->$keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iput-object p3, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$1$1;->$dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/android/systemui/power/shared/model/ScreenPowerState;

    iget-object p2, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$1$1;->this$0:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;

    iget-boolean v0, p2, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->initPivot:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p2, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->initPivot:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$1$1;->$keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivotViewController:Lcom/android/systemui/keyguard/animator/PivotViewController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->setChildViewPivot$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$1$1;->$dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "screenPowerState it="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " dozeUiState="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "KeyguardTouchAnimator"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    const-string/jumbo p0, "screenPowerState Do not animation in dozeUiState"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    :cond_2
    sget-object p0, Lcom/android/systemui/power/shared/model/ScreenPowerState;->SCREEN_ON:Lcom/android/systemui/power/shared/model/ScreenPowerState;

    if-ne p1, p0, :cond_9

    const-string/jumbo p0, "showScreenOnAffordanceAnimation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p2, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->screenONAffordanceViews:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p2, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v0, 0x1

    if-ltz v0, :cond_8

    check-cast p1, Landroid/view/View;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v0, p1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/high16 v2, 0x43160000    # 150.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    iput-object v4, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v4, p2, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->screenOnSpringAnimationList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v0, p1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iput-object p1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    new-instance p1, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$showScreenOnAffordanceAnimation$4$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$showScreenOnAffordanceAnimation$4$1;-><init>(Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;)V

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object p1, p2, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->screenOnSpringAnimationList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_4

    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_5
    return-object p0
.end method

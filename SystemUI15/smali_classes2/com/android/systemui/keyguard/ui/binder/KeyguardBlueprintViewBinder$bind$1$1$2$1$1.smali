.class final Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;
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
.field final synthetic $blueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

.field final synthetic $clockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

.field final synthetic $config:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

.field final synthetic $constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$blueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$config:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$clockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$blueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$config:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;->rebuildSections:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->onRebuildBegin()V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->onRebuildEnd()V

    goto :goto_3

    :cond_4
    :goto_4
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$blueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-interface {v2}, Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;->getSections()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$clockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;->currentClock:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/clocks/ClockController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$2$1$1;->$constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

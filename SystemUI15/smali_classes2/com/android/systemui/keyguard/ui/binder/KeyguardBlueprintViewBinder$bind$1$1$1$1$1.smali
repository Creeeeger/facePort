.class final Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;
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

.field final synthetic $prevBlueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$blueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$prevBlueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$config:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$clockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$blueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$prevBlueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$config:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    iget-object v3, v3, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;->rebuildSections:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->onRebuildBegin()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;->getSections()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;->getSections()Ljava/util/List;

    move-result-object v4

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v5, v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->onRebuildEnd()V

    goto :goto_3

    :cond_5
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$blueprint:Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;-><init>()V

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_6

    aget v6, v3, v5

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Layout;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;->getSections()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;->applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_5

    :cond_7
    sget-object v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$clockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;->currentClock:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/clocks/ClockController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1$1$1$1$1;->$constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

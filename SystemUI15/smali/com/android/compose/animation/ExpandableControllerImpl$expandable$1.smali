.class public final Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/Expandable;


# instance fields
.field public final synthetic this$0:Lcom/android/compose/animation/ExpandableControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;
    .locals 7

    iget-object v6, p0, Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object p0, v6, Lcom/android/compose/animation/ExpandableControllerImpl;->isComposed:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;

    invoke-direct {v1, v6}, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;-><init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V

    new-instance p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;-><init>(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/android/compose/animation/ExpandableControllerImpl;)V

    return-object p0
.end method

.method public final dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;
    .locals 1

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->isComposed:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;-><init>(Lcom/android/compose/animation/ExpandableControllerImpl;Lcom/android/systemui/animation/DialogCuj;)V

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    return-object p0
.end method

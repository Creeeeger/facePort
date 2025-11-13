.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$layoutListener$1$onLayoutChange$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$layoutListener$1$onLayoutChange$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$layoutListener$1$onLayoutChange$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->expandRootInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$transition$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$transition$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$transition$1$2;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$transition$1$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->setPathMotion(Landroid/transition/PathMotion;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->sceneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_0

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Scene;

    new-instance v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1;

    invoke-direct {v5, v3, p0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1;-><init>(Landroid/transition/Scene;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;I)V

    invoke-virtual {v3, v5}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    invoke-static {v3, v0}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

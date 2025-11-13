.class public final Lcom/android/systemui/communal/util/InteractionHandlerDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# instance fields
.field public final findViewToAnimate:Lkotlin/jvm/functions/Function1;

.field public final intentStarter:Lcom/android/systemui/communal/util/InteractionHandlerDelegate$IntentStarter;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/communal/util/InteractionHandlerDelegate$IntentStarter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/communal/util/InteractionHandlerDelegate$IntentStarter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/util/InteractionHandlerDelegate;->findViewToAnimate:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/communal/util/InteractionHandlerDelegate;->intentStarter:Lcom/android/systemui/communal/util/InteractionHandlerDelegate$IntentStarter;

    return-void
.end method


# virtual methods
.method public final onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 3

    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p3

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    instance-of v0, p1, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/communal/util/InteractionHandlerDelegate;->findViewToAnimate:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    const/16 v2, 0x1e

    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->fromView$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;Landroid/view/View;Ljava/lang/Integer;I)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    move-result-object v1

    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Landroid/app/ActivityOptions;

    iget-object p0, p0, Lcom/android/systemui/communal/util/InteractionHandlerDelegate;->intentStarter:Lcom/android/systemui/communal/util/InteractionHandlerDelegate$IntentStarter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2, p1, p3, v1}, Lcom/android/systemui/communal/util/InteractionHandlerDelegate$IntentStarter;->startPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;)V

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {p1, p2, p3}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    :goto_2
    return p0
.end method

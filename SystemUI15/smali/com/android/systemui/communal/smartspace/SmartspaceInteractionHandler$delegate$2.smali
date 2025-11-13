.class public final synthetic Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler$delegate$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/util/InteractionHandlerDelegate$IntentStarter;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler$delegate$2;->$tmp0:Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/communal/util/InteractionHandlerDelegate$IntentStarter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler$delegate$2;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    const-class v3, Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;

    const-string/jumbo v5, "startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler$delegate$2;->$tmp0:Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;

    const-string/jumbo v4, "startIntent"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler$delegate$2;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final startPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler$delegate$2;->$tmp0:Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;

    iget-object v0, p0, Lcom/android/systemui/communal/smartspace/SmartspaceInteractionHandler;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentWithoutDismissing(Landroid/app/PendingIntent;ZLjava/lang/Runnable;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

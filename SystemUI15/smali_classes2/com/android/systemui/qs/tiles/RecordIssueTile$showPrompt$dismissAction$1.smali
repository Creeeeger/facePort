.class public final Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic $dialog:Landroid/app/AlertDialog;

.field public final synthetic $expandable:Lcom/android/systemui/animation/Expandable;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/Expandable;Lcom/android/systemui/qs/tiles/RecordIssueTile;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;->$expandable:Lcom/android/systemui/animation/Expandable;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;->$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;->$expandable:Lcom/android/systemui/animation/Expandable;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    iget-object v3, v2, Lcom/android/systemui/qs/tiles/RecordIssueTile;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/systemui/animation/DialogCuj;

    const/16 v4, 0x3a

    const-string v5, "record_issue"

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;->$dialog:Landroid/app/AlertDialog;

    sget-object v4, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/RecordIssueTile;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;->$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dismissAction$1;->$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    :goto_1
    return v0
.end method

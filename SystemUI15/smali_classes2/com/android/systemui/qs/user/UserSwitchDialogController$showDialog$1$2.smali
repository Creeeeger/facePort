.class public final Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $this_with:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final synthetic this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;->this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iput-object p2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;->$this_with:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;->this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iget-object p1, p1, Lcom/android/systemui/qs/user/UserSwitchDialogController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;->this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iget-object p1, p1, Lcom/android/systemui/qs/user/UserSwitchDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_MORE_SETTINGS:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;->this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iget-object p1, p1, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-object p2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;->$this_with:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 v0, -0x3

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->createActivityTransitionController$default(Lcom/android/systemui/animation/DialogTransitionAnimator;Landroid/view/View;)Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;->$this_with:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;->this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p2, Lcom/android/systemui/qs/user/UserSwitchDialogController;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    :cond_1
    return-void
.end method

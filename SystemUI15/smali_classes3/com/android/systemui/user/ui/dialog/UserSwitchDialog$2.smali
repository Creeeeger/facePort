.class public final Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final synthetic $dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final synthetic $falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final synthetic $uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final synthetic this$0:Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->$falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->$uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->$dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p4, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;

    iput-object p5, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->$activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->$falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->$uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_MORE_SETTINGS:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->$dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-object p2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;

    const/4 v0, -0x3

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->createActivityTransitionController$default(Lcom/android/systemui/animation/DialogTransitionAnimator;Landroid/view/View;)Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;->$activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;->USER_SETTINGS_KT_TWO_PHONE_INTENT:Landroid/content/Intent;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p0, p2, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    :cond_2
    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_SWITCH_USER_TAP:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarViewWithBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarViewWithBackground:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iget-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f130e94

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    new-instance v0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController;)V

    const v2, 0x7f130ef1

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    const v2, 0x7f130f19

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;Z)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d03bb

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->userDetailViewAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    const v4, 0x7f0a049f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    new-instance v0, Lcom/android/systemui/animation/DialogCuj;

    const/16 v4, 0x3a

    const-string/jumbo v5, "switch_user"

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    if-eqz v0, :cond_2

    sget-object v4, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_DETAIL_OPEN:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance p0, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;-><init>(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator;)V

    iput-object p0, v2, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mDialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    :goto_1
    return-void
.end method

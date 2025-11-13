.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;

    iget-object p4, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 p5, 0x1

    invoke-interface {p4, p5}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    sub-int/2addr p3, p5

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getItem(I)Lcom/android/systemui/user/data/source/UserRecord;

    move-result-object p2

    iget-boolean p3, p2, Lcom/android/systemui/user/data/source/UserRecord;->isManageUsers:Z

    const/4 p4, 0x0

    if-nez p3, :cond_3

    iget-boolean p3, p2, Lcom/android/systemui/user/data/source/UserRecord;->isAddSupervisedUser:Z

    if-eqz p3, :cond_4

    :cond_3
    iget-object p3, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherCallback:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$UserSwitcherCallback;

    check-cast p3, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p3, Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p3}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130857

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4, p5}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    :cond_4
    iget-boolean p3, p2, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    if-nez p3, :cond_5

    invoke-virtual {p0, p2, p4}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->onUserListItemClicked(Lcom/android/systemui/user/data/source/UserRecord;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    :cond_5
    iget-object p0, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    iput-object p4, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    :goto_0
    return-void
.end method

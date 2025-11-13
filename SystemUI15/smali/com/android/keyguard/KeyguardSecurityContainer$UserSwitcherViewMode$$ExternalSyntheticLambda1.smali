.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardUserSwitcherAnchor;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;Lcom/android/keyguard/KeyguardUserSwitcherAnchor;Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/KeyguardUserSwitcherAnchor;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/KeyguardUserSwitcherAnchor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;

    iget-object v1, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    iget-object v2, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v1, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda2;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;

    invoke-direct {v1, p1, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p0, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mPopup:Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;->show()V

    :goto_0
    return-void
.end method

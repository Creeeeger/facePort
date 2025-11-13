.class Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;

    .line 1624
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1625
    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 1628
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1629
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1631
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmSemOverflowButton(Landroid/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$900(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmSemOverflowButton(Landroid/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 1634
    :cond_1
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/ActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1635
    const v1, 0x800005

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setGravity(I)V

    .line 1638
    :cond_2
    iget-object p1, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 1639
    return-void
.end method


# virtual methods
.method protected greylist-max-o onDismiss()V
    .locals 2

    .line 1643
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmActionButtonPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)V

    .line 1644
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 1646
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 1647
    return-void
.end method

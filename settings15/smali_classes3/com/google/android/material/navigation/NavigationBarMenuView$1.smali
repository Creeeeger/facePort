.class public final Lcom/google/android/material/navigation/NavigationBarMenuView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarMenuView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/navigation/NavigationBarMenuView;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$1;->this$0:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$1;->this$0:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSelectedCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    iput-object v0, p1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPostedOpenRunnable:Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;-><init>(Lcom/google/android/material/navigation/NavigationBarPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    new-instance p1, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;-><init>(Lcom/google/android/material/navigation/NavigationBarPresenter;Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;)V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPostedOpenRunnable:Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarItemView;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$1;->this$0:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$1;->this$0:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iget-boolean p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mExclusiveCheckable:Z

    const/4 v0, 0x1

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

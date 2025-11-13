.class public final Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;
.super Landroidx/appcompat/view/menu/MenuPopupHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v2, 0x0

    const v1, 0x7f040032

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    const p2, 0x800005

    iput p2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPopupPresenterCallback:Lcom/google/android/material/navigation/NavigationBarPresenter$PopupPresenterCallback;

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    if-eqz p2, :cond_0

    iput-object p1, p2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    :cond_0
    iput-object p4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverlapAnchorSet:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverlapAnchor:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowUpper:Z

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    invoke-super {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method

.class public final Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSearchExpanded:Z

    iget-object p1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllWrapper:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-object p1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a05a9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->enableSelectedAppPickerView(Z)V

    return p1
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSearchExpanded:Z

    iget-object p1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllWrapper:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-object p1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a05a9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->enableSelectedAppPickerView(Z)V

    return v0
.end method

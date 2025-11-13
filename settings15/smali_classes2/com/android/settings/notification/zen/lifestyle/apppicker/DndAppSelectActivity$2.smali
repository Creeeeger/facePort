.class public final Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
.implements Landroidx/picker/widget/AppPickerState$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$2;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    sget v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$2;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->selectEditMenuItem(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$2;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mOnSearchFilterListenerForLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout$1;

    invoke-virtual {v0, p1, p0}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$2;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mOnSearchFilterListenerForLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout$1;

    invoke-virtual {v0, p1, p0}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    return-void
.end method

.method public onStateAllChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/picker/model/AppInfo;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$2;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    iget-object v0, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->mSelectMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_1
    if-eq p2, v1, :cond_3

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSelectListChanged:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateSelectCount()V

    return-void
.end method

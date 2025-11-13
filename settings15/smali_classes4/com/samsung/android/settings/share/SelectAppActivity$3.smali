.class public final Lcom/samsung/android/settings/share/SelectAppActivity$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerState$OnStateChangeListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/share/SelectAppActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mOnSearchFilterListenerForLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout$1;

    invoke-virtual {v0, p1, p0}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mOnSearchFilterListenerForLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout$1;

    invoke-virtual {v0, p1, p0}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    return-void
.end method

.method public onStateAllChanged(Z)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    iget-object p1, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.samsung.android.app.sharelive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    sput-object p1, Lcom/samsung/android/settings/share/SelectAppViewModel;->quickShareShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mIsAllChecked:Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    sget-object v2, Lcom/samsung/android/settings/share/SelectAppViewModel;->quickShareShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mIsAllChecked:Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateSelectCount$1()V

    return-void
.end method

.method public onStateChanged(Landroidx/picker/model/AppInfo;Z)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-object v1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mSharedComponentMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mInitialListPair:Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p2, p1

    iget-object p1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mIsAllChecked:Z

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mIsAllChecked:Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateSelectCount$1()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateSelectAllCheckBox()V

    return-void
.end method

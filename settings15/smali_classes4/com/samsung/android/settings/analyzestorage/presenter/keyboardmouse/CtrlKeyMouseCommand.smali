.class public final Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/CtrlKeyMouseCommand;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;


# virtual methods
.method public final onKeyDown(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Landroidx/fragment/app/FragmentActivity;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p3, 0x1d

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p3, :cond_3

    const/16 p1, 0x33

    if-eq p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_1

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq p0, p3, :cond_4

    sget-object p3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne p0, p3, :cond_1

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getItemCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setAllItemChecked(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mListBehavior:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :goto_1
    return v1
.end method

.method public final onMouseDown(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;I)V
    .locals 1

    const/4 p0, -0x1

    if-le p2, p0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->isFileListController()Z

    move-result p0

    if-eqz p0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getItemAt(I)Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setItemChecked(IZ)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "onMouseDown position is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CtrlKeyMouseCommand"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMouseScroll(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand$IMouseScroll;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    return p0
.end method

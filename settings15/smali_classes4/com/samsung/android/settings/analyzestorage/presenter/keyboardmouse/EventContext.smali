.class public final Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

.field public mIsExpandable:Z

.field public mListBehavior:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

.field public mPosition:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

.field public mRecycleView:Landroidx/recyclerview/widget/RecyclerView;


# virtual methods
.method public final getFocusedFilePosition()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "EventContext"

    if-nez v0, :cond_0

    const-string p0, "can\'t get selected record position. list view is null"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    if-nez v2, :cond_1

    const-string p0, "can\'t get selected record position. mController is null"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public final getLastItemPosition()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mPosition:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->CONTENTS_PANEL:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :catch_0
    const-string p0, "EventContext"

    const-string v0, "getLastItemPosition - adapter is null"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

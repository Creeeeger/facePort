.class public final Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;


# static fields
.field public static sStartPosition:I


# instance fields
.field public mShiftSelectionStartPos:I


# direct methods
.method public static clearMetaState(Landroid/view/KeyEvent;)V
    .locals 3

    const-string v0, "ShiftKeyMouseCommand"

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mMetaState"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IllegalAccessException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoSuchFieldException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final onKeyDown(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Landroidx/fragment/app/FragmentActivity;Landroid/view/KeyEvent;)Z
    .locals 12

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    const/16 v1, 0x3b

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->getFocusedFilePosition()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;->mShiftSelectionStartPos:I

    goto/16 :goto_9

    :cond_0
    const/16 v1, 0x13

    if-gt v1, p2, :cond_15

    const/16 v2, 0x16

    if-gt p2, v2, :cond_15

    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mListBehavior:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->getFocusedFilePosition()I

    move-result p1

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->isFileListController()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    instance-of v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eqz v6, :cond_3

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    rem-int p2, p1, v1

    sub-int/2addr v1, v7

    if-ne p2, v1, :cond_5

    goto :goto_0

    :pswitch_1
    rem-int p2, p1, v1

    if-nez p2, :cond_7

    goto :goto_0

    :pswitch_2
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    div-int v5, p2, v1

    rem-int v6, p2, v1

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    div-int v6, p1, v1

    sub-int/2addr v5, v7

    if-ge v6, v5, :cond_8

    add-int/2addr v1, p1

    if-lt v1, p2, :cond_2

    sub-int/2addr p2, v7

    goto :goto_2

    :cond_2
    move p2, v1

    goto :goto_2

    :pswitch_3
    div-int p2, p1, v1

    if-lez p2, :cond_8

    sub-int p2, p1, v1

    goto :goto_2

    :cond_3
    if-eq p2, v1, :cond_6

    const/16 v1, 0x14

    if-eq p2, v1, :cond_4

    :goto_0
    move p2, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v7

    if-ge p1, p2, :cond_8

    :cond_5
    add-int/lit8 p2, p1, 0x1

    goto :goto_2

    :cond_6
    if-lez p1, :cond_8

    :cond_7
    add-int/lit8 p2, p1, -0x1

    goto :goto_2

    :cond_8
    :goto_1
    move p2, p1

    :goto_2
    if-eq p2, v8, :cond_14

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;->mShiftSelectionStartPos:I

    if-ge p1, p2, :cond_a

    if-gt v8, p1, :cond_9

    :goto_3
    move v8, v7

    goto :goto_4

    :cond_9
    move v8, v0

    goto :goto_4

    :cond_a
    if-lt v8, p1, :cond_9

    goto :goto_3

    :goto_4
    if-gt v5, v6, :cond_13

    invoke-virtual {v3, v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    if-eqz v9, :cond_11

    iget v10, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;->mShiftSelectionStartPos:I

    if-ne v5, v10, :cond_c

    :cond_b
    :goto_5
    move v10, v7

    goto :goto_6

    :cond_c
    if-nez v8, :cond_f

    if-gt p1, v10, :cond_d

    if-ge v10, p2, :cond_d

    if-gt v5, v10, :cond_b

    :cond_d
    if-lt p1, v10, :cond_e

    if-le v10, p2, :cond_e

    if-ge v5, v10, :cond_e

    goto :goto_5

    :cond_e
    if-ne v5, p2, :cond_f

    goto :goto_8

    :cond_f
    move v10, v8

    :goto_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v9, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    if-eqz v11, :cond_12

    check-cast v9, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    iget-object v9, v9, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez v9, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_7
    iget-object v9, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {v9, v5, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setItemChecked(IZ)V

    goto :goto_8

    :cond_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_14

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1, v3, v4, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    invoke-static {p3}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;->clearMetaState(Landroid/view/KeyEvent;)V

    :cond_15
    :goto_9
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onMouseDown(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;I)V
    .locals 4

    const/4 p0, -0x1

    const-string v0, "ShiftKeyMouseCommand"

    if-le p2, p0, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->isFileListController()Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;->sStartPosition:I

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->resetCheckedItemInfo()V

    const/4 v1, 0x1

    if-ne p2, p0, :cond_0

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setItemChecked(IZ)V

    goto :goto_1

    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onShiftMouseClick from : "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  to : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-ge v2, p0, :cond_1

    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getItemAt(I)Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;

    move-result-object v0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsSelectedMousePoint:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setItemChecked(IZ)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "shiftMouseClick - lastPosition "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;


# instance fields
.field public selectionStartPosition:I

.field public startPoint:Ljava/lang/Object;

.field public stopPoint:Ljava/lang/Object;


# virtual methods
.method public onItemSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->startPoint:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->stopPoint:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->startPoint:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->access$itemChecked(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->startPoint:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->access$itemChecked(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;IZ)V

    :goto_0
    iget p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->selectionStartPosition:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->selectionStartPosition:I

    :cond_1
    return-void
.end method

.method public onLongPressMultiSelectionEnded()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->startPoint:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->stopPoint:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->selectionStartPosition:I

    if-eq p1, p2, :cond_1

    const/4 p0, 0x1

    invoke-static {v0, p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->access$itemChecked(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;IZ)V

    :cond_1
    return-void
.end method

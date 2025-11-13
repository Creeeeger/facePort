.class public final Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;


# direct methods
.method public static onMovePageEvent(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mPosition:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->CONTENTS_PANEL:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_7

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz p1, :cond_1

    add-int/2addr v5, v3

    goto :goto_1

    :cond_1
    sub-int/2addr v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :cond_2
    if-eq v4, v6, :cond_3

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v6, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->getLastItemPosition()I

    move-result v2

    iget-boolean v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mIsExpandable:Z

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v2, :cond_6

    if-ne v5, v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v5, v1

    add-int/2addr v5, v3

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/2addr v1, v5

    sub-int/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v6

    :goto_3
    if-eq v1, v6, :cond_7

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand;->onScrollToPosition(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Z)Z

    move-result v0

    :cond_7
    return v0
.end method

.method public static onScrollToPosition(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Z)Z
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mPosition:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->CONTENTS_PANEL:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mIsExpandable:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->getLastItemPosition()I

    move-result v1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;

    invoke-direct {v3, p1, v2, v1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;-><init>(ZLandroidx/recyclerview/widget/RecyclerView;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onKeyDown(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Landroidx/fragment/app/FragmentActivity;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p2, 0x43

    const/4 p3, 0x1

    if-eq p0, p2, :cond_5

    const/16 p2, 0x70

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    const/16 p2, 0x5c

    if-eq p0, p2, :cond_4

    const/16 p2, 0x5d

    if-eq p0, p2, :cond_3

    const/16 p2, 0x7a

    if-eq p0, p2, :cond_2

    const/16 p2, 0x7b

    if-eq p0, p2, :cond_1

    :cond_0
    move p3, v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand;->onScrollToPosition(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Z)Z

    move-result p3

    goto :goto_0

    :cond_2
    invoke-static {p1, p3}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand;->onScrollToPosition(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Z)Z

    move-result p3

    goto :goto_0

    :cond_3
    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand;->onMovePageEvent(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Z)Z

    move-result p3

    goto :goto_0

    :cond_4
    invoke-static {p1, p3}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand;->onMovePageEvent(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Z)Z

    move-result p3

    :cond_5
    :goto_0
    return p3
.end method

.class public final Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mIsRecreating:Z

.field mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

.field public final mMultiTaskingAppCompatUIController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

.field public mShouldShowHint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/function/Consumer;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIController;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/TaskInfo;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/compatui/impl/CompatUIEvents;",
            ">;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            "Lcom/android/wm/shell/common/DisplayLayout;",
            "Lcom/android/wm/shell/compatui/CompatUIController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    const-class p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    const-string p1, "MultiTaskingAppCompatUIWindowManager"

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->TAG:Ljava/lang/String;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;Landroid/app/TaskInfo;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/CompatUIController;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mMultiTaskingAppCompatUIController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mShouldShowHint:Z

    return-void
.end method


# virtual methods
.method public final createLayout()Landroid/view/View;
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    move-result-object v2

    iput-object v2, v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    iget-object v0, v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mMultiTaskingAppCompatUIController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iput-object v1, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    iput-object v0, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0709d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    iget-object v3, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v4, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    iget-object v7, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v7, v7, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/app/IActivityTaskManager;->getOrientationControlPolicy(ILjava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mOrientationPolicy:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput v5, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mOrientationPolicy:I

    :goto_0
    const/4 v6, 0x1

    :try_start_1
    iget-object v0, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mIsRotationFrozen:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v7, "Failed to load orientation policy, set frozen"

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v6, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mIsRotationFrozen:Z

    :goto_1
    :try_start_2
    iget-object v0, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAppCompatAlignment()I

    move-result v0

    iput v0, v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v3, "Failed to retrieve app compat alignment."

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v0, v0, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const v0, 0x7f0a0789

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_4

    :cond_1
    iget-object v7, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v7, v7, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-static {v7}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    const v3, 0x7f0a0783

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v7, 0x7f0a0784

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0a0786

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0a0785

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v4, v8, v10, v12}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v4, v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v4

    goto :goto_5

    :cond_3
    move v4, v5

    :goto_5
    const v10, 0x7f0a077f

    const v12, 0x7f0a077e

    const v13, 0x7f0a0781

    const-string v14, "MultiTaskingAppCompatUILayout"

    if-eqz v4, :cond_4

    const-string v4, "ScreenReader was enabled, do not show alignment buttons"

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_4
    iget-object v4, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    invoke-virtual {v4}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v5, 0x1050566

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v15, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroid/graphics/Rect;

    iget-object v15, v15, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v15, v15, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v15, v15, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-direct {v11, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v15, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    iget-object v15, v15, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v9, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v9, v9, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-static {v9}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    move-result v9

    const-string v7, ", activityBounds="

    const-string v3, ", buttonSize="

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v8, v15, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    sub-int/2addr v9, v8

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v9, v8

    sub-int/2addr v9, v5

    iget v8, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    shl-int/lit8 v6, v8, 0x1

    sub-int/2addr v9, v6

    shr-int/lit8 v6, v9, 0x2

    iput v6, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mVerticalMarginFromActivityBounds:I

    if-ltz v6, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Not enough space to show alignment buttons vertically. taskBounds="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", statusBarHeight="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", navBarFrameHeight="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", btnSize="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mVerticalMarginFromActivityBounds="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mVerticalMarginFromActivityBounds:I

    invoke-static {v3, v14, v6}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v8, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    shl-int/lit8 v6, v8, 0x1

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v8, v6

    sub-int/2addr v5, v8

    iput v5, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHorizontalMarginFromActivityBounds:I

    if-ltz v5, :cond_7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0a0780

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Not enough space to show alignment buttons, taskBounds="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/ImageButton;

    if-eqz v5, :cond_8

    iget-object v5, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    const v0, 0x7f0a0787

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    iget-object v0, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    new-instance v5, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$2;

    invoke-direct {v5, v2, v3}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$2;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v5, 0x7f0a0783

    if-ne v4, v5, :cond_b

    new-instance v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0784

    :goto_9
    const v7, 0x7f0a0786

    :goto_a
    const v8, 0x7f0a0785

    :goto_b
    const v9, 0x7f0a0780

    goto :goto_8

    :cond_b
    const v6, 0x7f0a0784

    if-ne v4, v6, :cond_c

    new-instance v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;

    const/4 v7, 0x2

    invoke-direct {v4, v2, v7}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    :cond_c
    const v7, 0x7f0a0786

    if-ne v4, v7, :cond_d

    new-instance v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;

    const/4 v8, 0x3

    invoke-direct {v4, v2, v8}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    :cond_d
    const v8, 0x7f0a0785

    if-ne v4, v8, :cond_e

    new-instance v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;

    const/4 v9, 0x4

    invoke-direct {v4, v2, v9}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    :cond_e
    if-ne v4, v10, :cond_f

    new-instance v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;

    const/4 v9, 0x5

    invoke-direct {v4, v2, v9}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    :cond_f
    const v9, 0x7f0a0780

    if-ne v4, v9, :cond_10

    new-instance v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;

    const/4 v11, 0x6

    invoke-direct {v4, v2, v11}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_10
    if-ne v4, v13, :cond_11

    new-instance v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;

    const/4 v11, 0x7

    invoke-direct {v4, v2, v11}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_11
    if-ne v4, v12, :cond_a

    new-instance v4, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;

    const/4 v11, 0x1

    invoke-direct {v4, v2, v11}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_12
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->refreshButtonVisibility(Z)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->registerFrameCommitCallback(Ljava/lang/Runnable;)V

    iget-boolean v0, v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mIsRecreating:Z

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mMultiTaskingAppCompatUIController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v2, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v3, v2, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-boolean v3, v3, Landroid/app/AppCompatTaskInfo;->topActivityInDisplayCompat:Z

    if-eqz v3, :cond_13

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mCallback:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonAppeared;

    iget v2, v2, Landroid/app/TaskInfo;->taskId:I

    invoke-direct {v3, v2}, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonAppeared;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_13
    iget-object v0, v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    return-object v0
.end method

.method public final eligibleToShowLayout()Z
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mMultiTaskingAppCompatUIController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->isInSizeCompat()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    return-object p0
.end method

.method public final getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "getWindowLayoutParams: no layout"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getZOrder()I
    .locals 0

    const/16 p0, 0x2711

    return p0
.end method

.method public inflateLayout()Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mMultiTaskingAppCompatUIController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v0, v0, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v0, v1, :cond_0

    const v0, 0x7f0d0226

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0227

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    return-object p0
.end method

.method public final removeLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mMultiTaskingAppCompatUIController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->INSTANCE:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->release()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", mCompatUIController=, mMultiTaskingAppCompatUIController=}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mMultiTaskingAppCompatUIController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v1, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iput-object p1, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-static {p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    move-result v0

    invoke-static {v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v0, v0, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    iget-object v2, v1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v2, v2, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v1}, Landroid/app/AppCompatTaskInfo;->isFromLetterboxSingleTap()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->refreshButtonVisibility(Z)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-boolean v3, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mIsRecreating:Z

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    iput-boolean v4, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mIsRecreating:Z

    return p1
.end method

.method public final updateSurfacePosition()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mMultiTaskingAppCompatUIController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-boolean v0, v0, Landroid/app/AppCompatTaskInfo;->topActivityInDisplayCompat:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;->$VALUES:[Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$Prefs;

    const-string v1, "debug.mtappcompatui.hint"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "RestartHintShownCount"

    const-string v4, "boundscompatui_prefs"

    const/4 v5, 0x3

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-ge v0, v5, :cond_5

    :goto_1
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mShouldShowHint:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mShouldShowHint:Z

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_2
    if-ge v6, v5, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_3
    new-instance v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupBuilder;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupBuilder;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f130f82

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupBuilder;->mMessage:Ljava/lang/CharSequence;

    sget-object p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->INSTANCE:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    invoke-static {p0, v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->-$$Nest$mbuild(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupBuilder;)Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIUtil$TipPopupAdapter;->show()V

    :cond_5
    return-void
.end method

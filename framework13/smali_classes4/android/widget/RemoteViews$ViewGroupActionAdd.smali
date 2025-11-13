.class Landroid/widget/RemoteViews$ViewGroupActionAdd;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionAdd"
.end annotation


# static fields
.field static final blacklist NO_ID:I = -0x1


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist-max-r mNestedViews:Landroid/widget/RemoteViews;

.field private blacklist mStableId:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .locals 6
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;

    .line 2582
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 2583
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V
    .locals 6
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;
    .param p4, "index"    # I

    .line 2586
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 2587
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;
    .param p4, "index"    # I
    .param p5, "stableId"    # I

    .line 2589
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2590
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    .line 2591
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 2592
    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 2593
    iput p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    .line 2594
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 2595
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V
    .locals 7
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "depth"    # I

    .line 2597
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    .line 2599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 2600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    .line 2601
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 2602
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 2603
    return-void
.end method

.method private blacklist findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I
    .locals 4
    .param p1, "target"    # Landroid/view/ViewGroup;
    .param p2, "newContent"    # Landroid/widget/RemoteViews;

    .line 2618
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    .local v0, "nextChild":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2620
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2621
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v2, v3, :cond_0

    .line 2622
    return v0

    .line 2619
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2625
    .end local v0    # "nextChild":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/widget/RemoteViews$ViewTree;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .param p5, "finalizeAction"    # Ljava/lang/Runnable;

    .line 2756
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 2757
    .local v6, "targetVg":Landroid/view/ViewGroup;
    invoke-static {v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v16

    .line 2758
    .local v16, "nextChild":I
    iget-object v8, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object v10, v6

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    invoke-static/range {v8 .. v15}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v8

    .line 2761
    .local v8, "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v8, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v9

    .line 2763
    .local v9, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v9, :cond_3

    .line 2766
    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2767
    invoke-static {v8}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object v0

    iget v1, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    .line 2772
    :cond_0
    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v0, v16

    :goto_0
    move v10, v0

    .line 2773
    .local v10, "insertIndex":I
    move-object/from16 v11, p2

    invoke-virtual {v11, v9, v10}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    .line 2774
    if-ltz v16, :cond_2

    .line 2775
    add-int/lit8 v0, v16, 0x1

    invoke-static/range {p2 .. p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2778
    :cond_2
    new-instance v12, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, p5

    move-object v5, v6

    move-object v13, v6

    .end local v6    # "targetVg":Landroid/view/ViewGroup;
    .local v13, "targetVg":Landroid/view/ViewGroup;
    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Ljava/lang/Runnable;Landroid/view/ViewGroup;I)V

    return-object v12

    .line 2764
    .end local v10    # "insertIndex":I
    .end local v13    # "targetVg":Landroid/view/ViewGroup;
    .restart local v6    # "targetVg":Landroid/view/ViewGroup;
    :cond_3
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v8}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static synthetic blacklist lambda$initActionAsync$1(Landroid/view/ViewGroup;II)V
    .locals 1
    .param p0, "targetVg"    # Landroid/view/ViewGroup;
    .param p1, "nextChild"    # I
    .param p2, "recycledViewIndex"    # I

    .line 2745
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method static synthetic blacklist lambda$initActionAsync$2()V
    .locals 0

    .line 2751
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 17
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2631
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 2632
    .local v8, "context":Landroid/content/Context;
    iget v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    move-object/from16 v9, p1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/ViewGroup;

    .line 2634
    .local v10, "target":Landroid/view/ViewGroup;
    if-nez v10, :cond_0

    .line 2635
    return-void

    .line 2641
    :cond_0
    invoke-static {v10}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v11

    .line 2642
    .local v11, "nextChild":I
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v1, v8}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 2644
    .local v12, "rvToApply":Landroid/widget/RemoteViews;
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result v1

    and-int/lit8 v13, v1, 0x6

    .line 2645
    .local v13, "flagsToPropagate":I
    if-eqz v13, :cond_1

    invoke-virtual {v12, v13}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 2647
    :cond_1
    const/4 v14, -0x1

    if-ltz v11, :cond_4

    iget v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v1, v14, :cond_4

    .line 2651
    invoke-direct {v0, v10, v12}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I

    move-result v15

    .line 2652
    .local v15, "recycledViewIndex":I
    if-ltz v15, :cond_4

    .line 2653
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2654
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v12, v7}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2655
    if-ge v11, v15, :cond_2

    .line 2656
    sub-int v1, v15, v11

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 2658
    :cond_2
    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v10, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2659
    const/4 v6, 0x0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v16, v7

    .end local v7    # "child":Landroid/view/View;
    .local v16, "child":Landroid/view/View;
    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    .line 2661
    return-void

    .line 2665
    .end local v16    # "child":Landroid/view/View;
    .restart local v7    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v16, v7

    .end local v7    # "child":Landroid/view/View;
    .restart local v16    # "child":Landroid/view/View;
    sub-int v1, v15, v11

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 2671
    .end local v15    # "recycledViewIndex":I
    .end local v16    # "child":Landroid/view/View;
    :cond_4
    const/4 v6, 0x0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$mapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v1

    .line 2673
    .local v1, "nestedView":Landroid/view/View;
    iget v2, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v2, v14, :cond_5

    .line 2674
    invoke-static {v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    .line 2676
    :cond_5
    iget v2, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz v2, :cond_6

    goto :goto_0

    :cond_6
    move v2, v11

    :goto_0
    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2677
    if-ltz v11, :cond_7

    .line 2679
    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v10, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2681
    :cond_7
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    .line 2801
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .locals 19
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2688
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 2689
    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    move-object/from16 v8, p1

    invoke-virtual {v8, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v9

    .line 2690
    .local v9, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v9, :cond_6

    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2693
    :cond_0
    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 2696
    .local v6, "targetVg":Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2698
    .local v5, "context":Landroid/content/Context;
    iget-object v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    iget-object v1, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 2704
    invoke-static {v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v4

    .line 2705
    .local v4, "nextChild":I
    if-ltz v4, :cond_5

    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 2706
    iget-object v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v5}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 2707
    .local v3, "rvToApply":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;)V

    invoke-virtual {v9, v4, v0}, Landroid/widget/RemoteViews$ViewTree;->findChildIndex(ILjava/util/function/Predicate;)I

    move-result v2

    .line 2709
    .local v2, "recycledViewIndex":I
    if-ltz v2, :cond_4

    .line 2713
    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/RemoteViews$ViewTree;

    .line 2715
    .local v18, "recycled":Landroid/widget/RemoteViews$ViewTree;
    invoke-static/range {v18 .. v18}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2716
    if-le v2, v4, :cond_1

    .line 2717
    sub-int v0, v2, v4

    invoke-virtual {v9, v4, v0}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    .line 2719
    :cond_1
    add-int/lit8 v0, v4, 0x1

    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2720
    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v18 .. v18}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v17

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v14, p3

    move-object/from16 v16, p4

    invoke-static/range {v10 .. v17}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v10

    .line 2725
    .local v10, "reapplyTask":Landroid/widget/RemoteViews$AsyncApplyTask;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v10, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v11

    .line 2726
    .local v11, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v11, :cond_2

    .line 2729
    new-instance v12, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move v13, v2

    .end local v2    # "recycledViewIndex":I
    .local v13, "recycledViewIndex":I
    move-object v2, v10

    move-object v14, v3

    .end local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .local v14, "rvToApply":Landroid/widget/RemoteViews;
    move-object v3, v11

    move v15, v4

    .end local v4    # "nextChild":I
    .local v15, "nextChild":I
    move v4, v13

    move-object/from16 v16, v5

    .end local v5    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    move v5, v15

    move-object/from16 v17, v6

    .end local v6    # "targetVg":Landroid/view/ViewGroup;
    .local v17, "targetVg":Landroid/view/ViewGroup;
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;IILandroid/view/ViewGroup;)V

    return-object v12

    .line 2727
    .end local v13    # "recycledViewIndex":I
    .end local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v15    # "nextChild":I
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "targetVg":Landroid/view/ViewGroup;
    .restart local v2    # "recycledViewIndex":I
    .restart local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .restart local v4    # "nextChild":I
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "targetVg":Landroid/view/ViewGroup;
    :cond_2
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v10}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 2743
    .end local v10    # "reapplyTask":Landroid/widget/RemoteViews$AsyncApplyTask;
    .end local v11    # "tree":Landroid/widget/RemoteViews$ViewTree;
    :cond_3
    move v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    .end local v2    # "recycledViewIndex":I
    .end local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v4    # "nextChild":I
    .end local v5    # "context":Landroid/content/Context;
    .restart local v13    # "recycledViewIndex":I
    .restart local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .restart local v15    # "nextChild":I
    .restart local v16    # "context":Landroid/content/Context;
    sub-int v2, v13, v15

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v15, v2}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    .line 2744
    new-instance v5, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;

    invoke-direct {v5, v6, v15, v13}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewGroup;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0

    .line 2709
    .end local v13    # "recycledViewIndex":I
    .end local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v15    # "nextChild":I
    .end local v16    # "context":Landroid/content/Context;
    .end local v18    # "recycled":Landroid/widget/RemoteViews$ViewTree;
    .restart local v2    # "recycledViewIndex":I
    .restart local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .restart local v4    # "nextChild":I
    .restart local v5    # "context":Landroid/content/Context;
    :cond_4
    move v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    .end local v2    # "recycledViewIndex":I
    .end local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v4    # "nextChild":I
    .end local v5    # "context":Landroid/content/Context;
    .restart local v13    # "recycledViewIndex":I
    .restart local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .restart local v15    # "nextChild":I
    .restart local v16    # "context":Landroid/content/Context;
    goto :goto_0

    .line 2705
    .end local v13    # "recycledViewIndex":I
    .end local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v15    # "nextChild":I
    .end local v16    # "context":Landroid/content/Context;
    .restart local v4    # "nextChild":I
    .restart local v5    # "context":Landroid/content/Context;
    :cond_5
    move v15, v4

    move-object/from16 v16, v5

    .line 2751
    .end local v4    # "nextChild":I
    .end local v5    # "context":Landroid/content/Context;
    .restart local v15    # "nextChild":I
    .restart local v16    # "context":Landroid/content/Context;
    :goto_0
    new-instance v5, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0

    .line 2691
    .end local v6    # "targetVg":Landroid/view/ViewGroup;
    .end local v15    # "nextChild":I
    .end local v16    # "context":Landroid/content/Context;
    :cond_6
    :goto_1
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$initActionAsync$0$android-widget-RemoteViews$ViewGroupActionAdd(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2708
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o mergeBehavior()I
    .locals 1

    .line 2791
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .locals 1

    .line 2796
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    return v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 1
    .param p1, "root"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 2614
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 2615
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2606
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2607
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2608
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2609
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2610
    return-void
.end method

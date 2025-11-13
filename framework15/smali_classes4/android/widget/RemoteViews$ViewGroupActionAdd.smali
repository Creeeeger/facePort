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
.method public static synthetic blacklist $r8$lambda$rBlBi8K6ngja77O0hGAUvrG9EY4(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->lambda$initActionAsync$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    iput p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

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

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->addFlags(I)V

    return-void
.end method

.method private blacklist findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I
    .locals 4

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;
    .locals 17

    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/ViewGroup;

    invoke-static {v15}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v16

    iget-object v8, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p1

    move-object v10, v15

    move-object/from16 v12, p3

    invoke-static/range {v8 .. v14}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v8, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v8}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object v0

    iget v1, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    :cond_0
    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz v0, :cond_1

    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    goto :goto_0

    :cond_1
    move/from16 v0, v16

    :goto_0
    move v10, v0

    move-object/from16 v11, p2

    invoke-virtual {v11, v9, v10}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    if-ltz v16, :cond_2

    add-int/lit8 v0, v16, 0x1

    invoke-static/range {p2 .. p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v15, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    :cond_2
    new-instance v12, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, p4

    move-object v5, v15

    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Ljava/lang/Runnable;Landroid/view/ViewGroup;I)V

    return-object v12

    :cond_3
    move-object/from16 v11, p2

    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v8}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private synthetic blacklist lambda$initActionAsync$0(Landroid/view/View;)Z
    .locals 2

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

.method static synthetic blacklist lambda$initActionAsync$1(Landroid/view/ViewGroup;II)V
    .locals 1

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method static synthetic blacklist lambda$initActionAsync$2()V
    .locals 0

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_9

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v7}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v8

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmAllowOtherRootParent(Landroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v2}, Landroid/widget/RemoteViews;->-$$Nest$fgetmAppWidgetId(Landroid/widget/RemoteViews;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->hidden_semSetAllowOtherRootParent(ZI)V

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v6}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v9

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result v0

    and-int/lit8 v10, v0, 0x6

    if-eqz v10, :cond_2

    invoke-virtual {v9, v10}, Landroid/widget/RemoteViews;->addFlags(I)V

    :cond_2
    const/4 v11, -0x1

    if-ltz v8, :cond_5

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v0, v11, :cond_5

    invoke-direct {p0, v7, v9}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ge v8, v0, :cond_3

    sub-int v1, v0, v8

    invoke-virtual {v7, v8, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_3
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v7, v1, v3}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    invoke-static {v9, v6, v2, p2, p3}, Landroid/widget/RemoteViews;->-$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void

    :cond_4
    sub-int v3, v0, v8

    add-int/2addr v3, v1

    invoke-virtual {v7, v8, v3}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_5
    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/widget/RemoteViews;->-$$Nest$mapply(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v1, v11, :cond_6

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    :cond_6
    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz v1, :cond_7

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    goto :goto_0

    :cond_7
    move v1, v8

    :goto_0
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-ltz v8, :cond_8

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v7, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    :cond_8
    return-void

    :cond_9
    :goto_1
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    move-object/from16 v9, p1

    invoke-virtual {v9, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {v10}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v10}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    invoke-static/range {p1 .. p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    iget-object v1, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    invoke-static {v11}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v13

    if-ltz v13, :cond_4

    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v12}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v14

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;)V

    invoke-virtual {v10, v13, v0}, Landroid/widget/RemoteViews$ViewTree;->findChildIndex(ILjava/util/function/Predicate;)I

    move-result v15

    if-ltz v15, :cond_4

    invoke-static {v10}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/RemoteViews$ViewTree;

    invoke-static/range {v16 .. v16}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-le v15, v13, :cond_1

    sub-int v0, v15, v13

    invoke-virtual {v10, v13, v0}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    :cond_1
    add-int/lit8 v0, v13, 0x1

    invoke-static {v10}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v11, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v14

    move-object v1, v12

    move-object v2, v11

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v6}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v6, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v17

    if-eqz v17, :cond_2

    new-instance v18, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, v17

    move v4, v15

    move v5, v13

    move-object/from16 v19, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;IILandroid/view/ViewGroup;)V

    return-object v18

    :cond_2
    move-object/from16 v19, v6

    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-static/range {v19 .. v19}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_3
    sub-int v0, v15, v13

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v13, v0}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;

    invoke-direct {v0, v11, v13, v15}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewGroup;II)V

    invoke-direct {v7, v12, v10, v8, v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v7, v12, v10, v8, v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o mergeBehavior()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    return v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

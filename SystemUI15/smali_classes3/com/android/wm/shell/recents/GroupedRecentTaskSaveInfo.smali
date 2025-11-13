.class public final Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCellBounds:Landroid/graphics/Rect;

.field public mCellPosition:I

.field public mCellTaskId:I

.field public mLeftTopBounds:Landroid/graphics/Rect;

.field public mLeftTopTaskId:I

.field public mRightBottomBounds:Landroid/graphics/Rect;

.field public mRightBottomTaskId:I

.field public mSplitDivision:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/util/SplitBounds;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    iget v1, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    iput v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    iget v1, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    iput v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v1, :cond_0

    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    if-eq v2, v0, :cond_0

    iput v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    if-eq v3, v0, :cond_1

    iget-object v3, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    :goto_0
    iget-boolean v2, p1, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    iput v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    if-eq v1, v0, :cond_3

    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    iput p1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    :cond_3
    return-void
.end method

.method public static jsonToGroupedRecentTaskSaveInfo(Lorg/json/JSONObject;)Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;
    .locals 4

    new-instance v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    invoke-direct {v0}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;-><init>()V

    const-string v1, "left_top_taskid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    const-string/jumbo v1, "right_bottom_taskid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v1, :cond_0

    const-string v2, "cell_taskid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    const-string v3, "left_top_bounds"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    const-string/jumbo v3, "right_bottom_bounds"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    const-string v3, "cell_bounds"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    :cond_1
    const-string/jumbo v2, "split_division"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    if-eqz v1, :cond_2

    const-string v1, "cell_position"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    iget v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    iget v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    iget v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    iget v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final groupedRecentTaskSaveInfoToJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "left_top_taskid"

    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "right_bottom_taskid"

    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v1, :cond_0

    const-string v2, "cell_taskid"

    iget v3, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_top_bounds"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "right_bottom_bounds"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cell_bounds"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v2, "split_division"

    iget v3, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    const-string v1, "cell_position"

    iget p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "leftTop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nrightBottom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ncell: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

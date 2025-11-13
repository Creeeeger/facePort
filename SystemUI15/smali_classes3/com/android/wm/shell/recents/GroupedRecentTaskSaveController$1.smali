.class public final Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

.field public final synthetic val$multiSplitTasks:Landroid/util/SparseIntArray;

.field public final synthetic val$splitTasks:Landroid/util/SparseIntArray;

.field public final synthetic val$taskSplitBoundsMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->this$0:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    iput-object p2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$splitTasks:Landroid/util/SparseIntArray;

    iput-object p3, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$multiSplitTasks:Landroid/util/SparseIntArray;

    iput-object p4, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$taskSplitBoundsMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->this$0:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    iget-object v2, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$splitTasks:Landroid/util/SparseIntArray;

    iget-object v3, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$multiSplitTasks:Landroid/util/SparseIntArray;

    iget-object v0, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;->val$taskSplitBoundsMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "GroupedRecentTaskSaveInfo"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    iget-object v9, v1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentSaveFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    :cond_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "grouped_recent_tasks"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->jsonToGroupedRecentTaskSaveInfo(Lorg/json/JSONObject;)Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->addGroupedRecentTaskSaveInfo(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;)Z

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    const/4 v6, 0x3

    new-array v9, v6, [I

    const/4 v10, -0x1

    aput v10, v9, v8

    const/4 v11, 0x1

    aput v10, v9, v11

    const/4 v12, 0x2

    aput v10, v9, v12

    iget v13, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    aput v13, v9, v8

    iget v13, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    aput v13, v9, v11

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v11, :cond_2

    iget v11, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    aput v11, v9, v12

    :cond_2
    move v11, v8

    :goto_3
    if-ge v11, v6, :cond_6

    aget v13, v9, v11

    invoke-virtual {v2, v13, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    if-ne v13, v10, :cond_5

    if-ge v11, v12, :cond_3

    aget v13, v9, v11

    if-ne v13, v10, :cond_3

    goto :goto_4

    :cond_3
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v13, :cond_4

    aget v13, v9, v11

    invoke-virtual {v3, v13, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    if-eq v13, v10, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    const-string/jumbo v5, "skip saved task to load"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget v6, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    iget v9, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    invoke-virtual {v2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget v6, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    iget v9, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    invoke-virtual {v2, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v6, :cond_7

    iget v9, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    if-eq v9, v10, :cond_7

    iget v11, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    invoke-virtual {v3, v11, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget v9, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    iget v11, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    invoke-virtual {v3, v9, v11}, Landroid/util/SparseIntArray;->put(II)V

    :cond_7
    if-eqz v6, :cond_8

    new-instance v9, Lcom/android/wm/shell/util/SplitBounds;

    iget-object v13, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    iget-object v14, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    iget-object v15, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    iget v11, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    iget v12, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    iget v8, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    move-object/from16 v22, v1

    iget v1, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    const/16 v18, 0x5

    move/from16 v17, v12

    move-object v12, v9

    move/from16 v16, v11

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v1

    invoke-direct/range {v12 .. v21}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIII)V

    goto :goto_5

    :cond_8
    move-object/from16 v22, v1

    new-instance v9, Lcom/android/wm/shell/util/SplitBounds;

    iget-object v1, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    iget-object v8, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    iget v10, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    iget v11, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    const/16 v28, 0x5

    move-object/from16 v23, v9

    move-object/from16 v24, v1

    move-object/from16 v25, v8

    move/from16 v26, v10

    move/from16 v27, v11

    invoke-direct/range {v23 .. v28}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    :goto_5
    iget v1, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_9

    iget v1, v5, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v1, v22

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v0, "success to load grouped recent tasks"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :goto_6
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to restore grouped recent tasks"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void
.end method

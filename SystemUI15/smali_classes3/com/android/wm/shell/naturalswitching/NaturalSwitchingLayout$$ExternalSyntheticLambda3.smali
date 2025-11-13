.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;IIILandroid/graphics/Rect;I)V
    .locals 0

    iput p6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$2:I

    iget v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$3:I

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_1

    :pswitch_0
    move v1, v8

    goto :goto_0

    :pswitch_1
    move v1, v7

    goto :goto_0

    :pswitch_2
    move v1, v6

    goto :goto_0

    :pswitch_3
    move v1, v5

    goto :goto_0

    :pswitch_4
    move v1, v4

    :goto_0
    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v10, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v10, v9}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v10

    goto :goto_1

    :cond_0
    move v10, v8

    :goto_1
    if-ne v10, v6, :cond_2

    if-ne v1, v6, :cond_1

    new-instance v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;

    invoke-direct {v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;-><init>()V

    goto :goto_2

    :cond_1
    if-ne v1, v7, :cond_2

    new-instance v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToFreeformChanger;

    invoke-direct {v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToFreeformChanger;-><init>()V

    goto :goto_2

    :cond_2
    if-ne v10, v7, :cond_4

    if-ne v1, v6, :cond_3

    new-instance v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToSplitChanger;

    invoke-direct {v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToSplitChanger;-><init>()V

    goto :goto_2

    :cond_3
    if-ne v1, v7, :cond_4

    new-instance v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToFreeformChanger;

    invoke-direct {v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToFreeformChanger;-><init>()V

    goto :goto_2

    :cond_4
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    if-eqz v11, :cond_5

    if-ne v10, v4, :cond_5

    if-ne v1, v7, :cond_5

    new-instance v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FullToFreeformChanger;

    invoke-direct {v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FullToFreeformChanger;-><init>()V

    goto :goto_2

    :cond_5
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v7, :cond_7

    if-ne v10, v5, :cond_7

    if-ne v1, v6, :cond_6

    new-instance v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger;

    invoke-direct {v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger;-><init>()V

    goto :goto_2

    :cond_6
    if-ne v1, v5, :cond_7

    new-instance v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger;

    invoke-direct {v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger;-><init>()V

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    const-string v7, "NaturalSwitchingLayout"

    if-nez v6, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "changeLayout: invalid changer, from="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "changeLayout: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    iget-boolean v1, v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    iget-object v7, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v7

    xor-int/2addr v4, v7

    new-instance v7, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda4;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    iget-object v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object v8, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object v8, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object v9, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-boolean v4, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mIsMainDisplay:Z

    iput v2, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    iput-boolean v1, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_MULTI_SPLIT:Z

    if-eqz p0, :cond_9

    iget-object p0, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    move-result p0

    if-eqz p0, :cond_9

    iput v5, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mCurrentSplitMode:I

    goto :goto_3

    :cond_9
    iget-object p0, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result p0

    iput p0, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mCurrentSplitMode:I

    :goto_3
    iput-object v7, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    iput v3, v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    invoke-virtual {v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->changeLayout()V

    iput-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mLastChanger:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    :goto_4
    return-void

    :pswitch_5
    iget-object v9, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget v10, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$1:I

    iget v11, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$2:I

    iget v12, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$3:I

    iget-object v13, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    iget-object p0, v9, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;IIILandroid/graphics/Rect;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

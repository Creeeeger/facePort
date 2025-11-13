.class public final Lcom/android/wm/shell/splitscreen/StageLaunchOptions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppsStackedVertically:Z

.field public final mCellRatio:F

.field public final mCellStageIntent:Landroid/content/Intent;

.field public final mCellStageUserHandle:Landroid/os/UserHandle;

.field public mCellStageWindowConfigPosition:I

.field public final mCellTaskId:I

.field public final mChangeAppIntent:Landroid/content/Intent;

.field public final mChangeAppStageType:I

.field public final mChangeAppUserHandle:Landroid/os/UserHandle;

.field public final mLaunchFrom:Ljava/lang/String;

.field public mLaunchTaskId:I

.field public final mLeftTopTaskId:I

.field public mMainStageIntent:Landroid/content/Intent;

.field public mMainStageUserHandle:Landroid/os/UserHandle;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mRemoteTransition:Landroid/window/RemoteTransition;

.field public final mRightBottomTaskId:I

.field public mSideStageIntent:Landroid/content/Intent;

.field public mSideStagePosition:I

.field public mSideStageUserHandle:Landroid/os/UserHandle;

.field public final mSplitCreateMode:I

.field public mSplitDivision:I

.field public mStageRatio:F

.field public final mTapIntent:Landroid/content/Intent;

.field public final mTapTaskId:I

.field public final mTapUserHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitCreateMode:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitCreateMode:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    const-string/jumbo v2, "stage_position"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    const-string/jumbo v2, "split_create_mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitCreateMode:I

    const-string/jumbo v2, "stage_ratio"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    :cond_0
    const-string v1, "cell_ratio"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    const-string v1, "launch_task_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    const-string v1, "main_stage_intent"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    const-string/jumbo v1, "side_stage_intent"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    const-string v1, "main_stage_user_handle"

    const-class v2, Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    const-string/jumbo v1, "side_stage_user_handle"

    const-class v2, Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    const-string v1, "left_top_task_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    const-string/jumbo v1, "right_bottom_task_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    const-string v1, "cell_task_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    const-string/jumbo v1, "tap_task_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    const-string/jumbo v0, "tap_intent"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapIntent:Landroid/content/Intent;

    const-string/jumbo v0, "tap_user_handle"

    const-class v1, Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapUserHandle:Landroid/os/UserHandle;

    const-string v0, "cell_stage_intent"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    const-string v0, "cell_stage_user_handle"

    const-class v1, Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageUserHandle:Landroid/os/UserHandle;

    const-string v0, "grouped_recent_vertically"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mAppsStackedVertically:Z

    const-string v0, "change_app_intent"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppIntent:Landroid/content/Intent;

    const-string v0, "change_app_user_handle"

    const-class v1, Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppUserHandle:Landroid/os/UserHandle;

    const-string v0, "change_app_stage_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppStageType:I

    const-string v0, "cell_stage_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    const-string v0, "launch_from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchFrom:Ljava/lang/String;

    const-string/jumbo v0, "split_division"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const-string v0, "pending_intent"

    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    const-string/jumbo v0, "remote_transition"

    const-class v1, Landroid/window/RemoteTransition;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/RemoteTransition;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public static makeStartIntentOpts(Landroid/content/Intent;Landroid/os/UserHandle;III)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;-><init>()V

    iput-object p0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iput-object p1, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    iput p2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iput p3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    iput p4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    return-object v0
.end method

.method public static makeStartIntentsOpts(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;-><init>()V

    iput-object p0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    iput-object p1, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iput-object p2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    iput-object p3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    iput p4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iput p6, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    iput p5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    return-object v0
.end method

.method public static makeStartTaskAndIntentOpts(ILandroid/content/Intent;II)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;-><init>()V

    iput p0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    iput-object p1, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iput p2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iput p3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    return-object v0
.end method

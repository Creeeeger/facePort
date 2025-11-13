.class public Lcom/samsung/android/multiwindow/TaskOrganizerInfo;
.super Ljava/lang/Object;
.source "TaskOrganizerInfo.java"


# static fields
.field private static final blacklist KEY_CHANGE_SPLIT_LAYOUT_FOR_LAUNCH_ADJACENT:Ljava/lang/String; = "change_split_layout_for_launch_adjacent"

.field private static final blacklist KEY_CHANGE_TO_HORIZONTAL_SPLIT_LAYOUT:Ljava/lang/String; = "change_to_horizontal_split_layout"

.field private static final blacklist KEY_FREEFORM_TO_SPLIT_TASK_ID:Ljava/lang/String; = "freeform_to_split_task_id"

.field private static final blacklist KEY_NATURAL_SWITCHING_TASK_ID:Ljava/lang/String; = "natural_switching_task_id"

.field private static final blacklist KEY_REPARENT_CELL:Ljava/lang/String; = "reparent_cell"

.field private static final blacklist KEY_SKIP_EVICT_SPLIT_TASK:Ljava/lang/String; = "skip_evict_split_task"

.field private static final blacklist KEY_SPLIT_EXIT_REMOTE_ANIMATION_STATE:Ljava/lang/String; = "split_exit_remote_animation"

.field private static final blacklist KEY_SPLIT_SCREEN_CREATE_MODE:Ljava/lang/String; = "split_screen_create_mode"

.field private static final blacklist KEY_SPLIT_TO_SPLIT:Ljava/lang/String; = "split_to_split"

.field private static final blacklist KEY_STAGE_POSITION:Ljava/lang/String; = "stage_position"

.field private static final blacklist KEY_START_SPLIT_WITH_RECENTS_ALL_APPS:Ljava/lang/String; = "start_split_with_recents_all_apps"

.field private static final blacklist KEY_SWAP_SPLIT_SCREEN:Ljava/lang/String; = "swap_split_screen"

.field private static final blacklist SPLIT_EXIT_REMOTE_ANIMATION_STATE_FINISHED:I = 0x2

.field private static final blacklist SPLIT_EXIT_REMOTE_ANIMATION_STATE_NONE:I = 0x0

.field private static final blacklist SPLIT_EXIT_REMOTE_ANIMATION_STATE_STARTED:I = 0x1


# instance fields
.field private blacklist mChangeSplitLayoutForLaunchAdjacent:Z

.field private blacklist mChangeToHorizontalSplitLayout:Z

.field private blacklist mFreeformToSplitTaskId:I

.field private blacklist mIsSplitToSplitChange:Z

.field private blacklist mNSTaskId:I

.field private blacklist mNeedToReparentCell:Z

.field private blacklist mSkipEvictSplitTask:Z

.field private blacklist mSplitExitRemoteAnimationState:I

.field private blacklist mSplitScreenCreateMode:I

.field private blacklist mStagePosition:I

.field private blacklist mWithRecentAllApps:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mStagePosition:I

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mFreeformToSplitTaskId:I

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mWithRecentAllApps:Z

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mIsSplitToSplitChange:Z

    .line 74
    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNSTaskId:I

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNeedToReparentCell:Z

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    .line 83
    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSkipEvictSplitTask:Z

    .line 96
    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitExitRemoteAnimationState:I

    .line 100
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mStagePosition:I

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mFreeformToSplitTaskId:I

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mWithRecentAllApps:Z

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mIsSplitToSplitChange:Z

    .line 74
    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNSTaskId:I

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNeedToReparentCell:Z

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    .line 83
    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSkipEvictSplitTask:Z

    .line 96
    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitExitRemoteAnimationState:I

    .line 103
    if-nez p1, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 110
    const-string/jumbo v2, "stage_position"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mStagePosition:I

    .line 111
    const-string v2, "freeform_to_split_task_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mFreeformToSplitTaskId:I

    .line 112
    const-string/jumbo v2, "start_split_with_recents_all_apps"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mWithRecentAllApps:Z

    .line 115
    const-string/jumbo v2, "split_to_split"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mIsSplitToSplitChange:Z

    .line 116
    const-string v2, "natural_switching_task_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNSTaskId:I

    .line 117
    const-string/jumbo v2, "reparent_cell"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNeedToReparentCell:Z

    .line 120
    const-string v2, "change_to_horizontal_split_layout"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    .line 123
    const-string/jumbo v2, "split_screen_create_mode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    .line 125
    const-string v1, "change_split_layout_for_launch_adjacent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    .line 129
    const-string/jumbo v1, "skip_evict_split_task"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSkipEvictSplitTask:Z

    .line 132
    const-string/jumbo v1, "split_exit_remote_animation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitExitRemoteAnimationState:I

    .line 135
    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/multiwindow/TaskOrganizerInfo;
    .locals 1
    .param p0, "b"    # Landroid/os/Bundle;

    .line 139
    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public blacklist changeToHorizontalSplitLayout()V
    .locals 1

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    .line 241
    return-void
.end method

.method public blacklist getFreeformToSplitTaskId()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mFreeformToSplitTaskId:I

    return v0
.end method

.method public blacklist getNSTaskId()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNSTaskId:I

    return v0
.end method

.method public blacklist getSplitScreenCreateMode()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    return v0
.end method

.method public blacklist getStagePosition()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mStagePosition:I

    return v0
.end method

.method public blacklist isChangeSplitLayoutForLaunchAdjacent()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    return v0
.end method

.method public blacklist isChangeToHorizontalSplitLayout()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    return v0
.end method

.method public blacklist isSkipEvictSplitTask()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSkipEvictSplitTask:Z

    return v0
.end method

.method public blacklist isSplitExitRemoteAnimationFinished()Z
    .locals 2

    .line 287
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitExitRemoteAnimationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSplitExitRemoteAnimationStarted()Z
    .locals 2

    .line 283
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitExitRemoteAnimationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isSplitToSplitChange()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mIsSplitToSplitChange:Z

    return v0
.end method

.method public blacklist isWithRecentAllApps()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mWithRecentAllApps:Z

    return v0
.end method

.method public blacklist needToReparentCell()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNeedToReparentCell:Z

    return v0
.end method

.method public blacklist setFreeformToSplitTaskId(I)V
    .locals 0
    .param p1, "freeformToSplitTaskId"    # I

    .line 188
    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mFreeformToSplitTaskId:I

    .line 189
    return-void
.end method

.method public blacklist setNSTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 222
    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNSTaskId:I

    .line 223
    return-void
.end method

.method public blacklist setReparentCell(Z)V
    .locals 0
    .param p1, "reparentCell"    # Z

    .line 230
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNeedToReparentCell:Z

    .line 231
    return-void
.end method

.method public blacklist setSkipEvictSplitTask(Z)V
    .locals 0
    .param p1, "skipEvict"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSkipEvictSplitTask:Z

    .line 270
    return-void
.end method

.method public blacklist setSplitExitRemoteAnimationFinished()V
    .locals 1

    .line 279
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitExitRemoteAnimationState:I

    .line 280
    return-void
.end method

.method public blacklist setSplitExitRemoteAnimationStarted()V
    .locals 1

    .line 275
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitExitRemoteAnimationState:I

    .line 276
    return-void
.end method

.method public blacklist setSplitScreenCreateModeForLaunchAdjacent(I)V
    .locals 1
    .param p1, "splitScreenCreateMode"    # I

    .line 250
    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    .line 252
    return-void
.end method

.method public blacklist setSplitToSplitChange(Z)V
    .locals 0
    .param p1, "splitToSplit"    # Z

    .line 214
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mIsSplitToSplitChange:Z

    .line 215
    return-void
.end method

.method public blacklist setStagePosition(I)V
    .locals 0
    .param p1, "stagePosition"    # I

    .line 196
    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mStagePosition:I

    .line 197
    return-void
.end method

.method public blacklist setWithRecentAllApps(Z)V
    .locals 0
    .param p1, "withRecentAllApps"    # Z

    .line 204
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mWithRecentAllApps:Z

    .line 205
    return-void
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .locals 4

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "b":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mStagePosition:I

    if-eqz v1, :cond_0

    .line 147
    const-string/jumbo v2, "stage_position"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    :cond_0
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mFreeformToSplitTaskId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 150
    const-string v3, "freeform_to_split_task_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mWithRecentAllApps:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 153
    const-string/jumbo v1, "start_split_with_recents_all_apps"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mIsSplitToSplitChange:Z

    if-eqz v1, :cond_3

    .line 158
    const-string/jumbo v1, "split_to_split"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    :cond_3
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNSTaskId:I

    if-eq v1, v2, :cond_4

    .line 161
    const-string v2, "natural_switching_task_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNeedToReparentCell:Z

    if-eqz v1, :cond_5

    .line 164
    const-string/jumbo v1, "reparent_cell"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    if-eqz v1, :cond_6

    .line 169
    const-string v1, "change_to_horizontal_split_layout"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    :cond_6
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    const-string/jumbo v2, "split_screen_create_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    const-string v2, "change_split_layout_for_launch_adjacent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSkipEvictSplitTask:Z

    const-string/jumbo v2, "skip_evict_split_task"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitExitRemoteAnimationState:I

    const-string/jumbo v2, "split_exit_remote_animation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskOrganizerInfo{mStagePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mStagePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFreeformToSplitTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mFreeformToSplitTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWithRecentAllApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mWithRecentAllApps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNSTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mNSTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSplitToSplitChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mIsSplitToSplitChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChangeToHorizontalSplitLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSplitScreenCreateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    .line 307
    invoke-static {v1}, Landroid/app/ActivityTaskManager;->splitCreateModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChangeSplitLayoutForLaunchAdjacent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSkipEvictSplitTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSkipEvictSplitTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote_anim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitExitRemoteAnimationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    return-object v0
.end method

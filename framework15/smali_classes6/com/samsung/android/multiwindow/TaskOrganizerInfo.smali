.class public Lcom/samsung/android/multiwindow/TaskOrganizerInfo;
.super Ljava/lang/Object;
.source "TaskOrganizerInfo.java"


# static fields
.field private static final blacklist KEY_ASSISTANT_ACTIVITY_INTENT:Ljava/lang/String; = "assistant_activity_intent"

.field private static final blacklist KEY_CHANGE_SPLIT_LAYOUT_FOR_LAUNCH_ADJACENT:Ljava/lang/String; = "change_split_layout_for_launch_adjacent"

.field private static final blacklist KEY_CHANGE_TO_HORIZONTAL_SPLIT_LAYOUT:Ljava/lang/String; = "change_to_horizontal_split_layout"

.field private static final blacklist KEY_DEFER_SPLIT_ROTATION_IN_PORT:Ljava/lang/String; = "defer_split_rotation_in_port"

.field private static final blacklist KEY_EXIT_SPLIT_SCREEN_STAGE_TYPE:Ljava/lang/String; = "exit_split_screen_stage_type"

.field private static final blacklist KEY_EXIT_SPLIT_SCREEN_TOP_TASK_ID:Ljava/lang/String; = "exit_split_screen_top_task_id"

.field private static final blacklist KEY_EXIT_SPLIT_TO_FREEFORM_TASK_ID:Ljava/lang/String; = "split_to_freeform_task_id"

.field private static final blacklist KEY_REQUESTED_SPLIT_RATIO:Ljava/lang/String; = "requested_split_ratio"

.field private static final blacklist KEY_SPLIT_FEASIBLE_MODE:Ljava/lang/String; = "split_feasible_mode"

.field private static final blacklist KEY_SPLIT_SCREEN_CREATE_MODE:Ljava/lang/String; = "split_screen_create_mode"


# instance fields
.field private blacklist mAssistantActivityIntent:Landroid/content/Intent;

.field private blacklist mChangeSplitLayoutForLaunchAdjacent:Z

.field private blacklist mChangeToHorizontalSplitLayout:Z

.field private blacklist mDeferSplitRotationInPort:Z

.field private blacklist mExitSplitScreenStageType:I

.field private blacklist mExitSplitScreenTopTaskId:I

.field private blacklist mRequestedSplitRatio:F

.field private blacklist mSplitFeasibleMode:I

.field private blacklist mSplitScreenCreateMode:I

.field private blacklist mSplitToFreeformTaskId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mAssistantActivityIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mRequestedSplitRatio:F

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mDeferSplitRotationInPort:Z

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitFeasibleMode:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mAssistantActivityIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mRequestedSplitRatio:F

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mDeferSplitRotationInPort:Z

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitFeasibleMode:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    const-string v3, "change_to_horizontal_split_layout"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    const-string v3, "split_screen_create_mode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    const-string v3, "change_split_layout_for_launch_adjacent"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    const-string v3, "exit_split_screen_top_task_id"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    const-string v3, "split_to_freeform_task_id"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    const-string v3, "exit_split_screen_stage_type"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v3, :cond_1

    const-string v3, "split_feasible_mode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitFeasibleMode:I

    :cond_1
    const-string v1, "assistant_activity_intent"

    const-class v3, Landroid/content/Intent;

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mAssistantActivityIntent:Landroid/content/Intent;

    const-string v1, "requested_split_ratio"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mRequestedSplitRatio:F

    const-string v1, "defer_split_rotation_in_port"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mDeferSplitRotationInPort:Z

    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/multiwindow/TaskOrganizerInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public blacklist changeToHorizontalSplitLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    return-void
.end method

.method public blacklist getAssistantActivityIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mAssistantActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getDeferSplitRotationInPort()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mDeferSplitRotationInPort:Z

    return v0
.end method

.method public blacklist getExitSplitScreenStageType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    return v0
.end method

.method public blacklist getExitSplitScreenTopTaskId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    return v0
.end method

.method public blacklist getRequestedSplitRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mRequestedSplitRatio:F

    return v0
.end method

.method public blacklist getSplitFeasibleMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitFeasibleMode:I

    return v0
.end method

.method public blacklist getSplitScreenCreateMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    return v0
.end method

.method public blacklist getSplitToFreeformTaskId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    return v0
.end method

.method public blacklist isChangeSplitLayoutForLaunchAdjacent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    return v0
.end method

.method public blacklist isChangeToHorizontalSplitLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    return v0
.end method

.method public blacklist setAssistantActivityToSplit(Landroid/content/Intent;FZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mAssistantActivityIntent:Landroid/content/Intent;

    iput p2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mRequestedSplitRatio:F

    iput-boolean p3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mDeferSplitRotationInPort:Z

    return-void
.end method

.method public blacklist setExitSplitScreenStageType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    return-void
.end method

.method public blacklist setExitSplitScreenTopTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    return-void
.end method

.method public blacklist setSplitFeasibleMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitFeasibleMode:I

    return-void
.end method

.method public blacklist setSplitScreenCreateModeForLaunchAdjacent(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    return-void
.end method

.method public blacklist setSplitToFreeformTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    return-void
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    if-eqz v1, :cond_0

    const-string v1, "change_to_horizontal_split_layout"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string v1, "split_screen_create_mode"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "change_split_layout_for_launch_adjacent"

    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "exit_split_screen_top_task_id"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "split_to_freeform_task_id"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "exit_split_screen_stage_type"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v1, :cond_1

    const-string v1, "split_feasible_mode"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitFeasibleMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v1, "assistant_activity_intent"

    iget-object v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mAssistantActivityIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "requested_split_ratio"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mRequestedSplitRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "defer_split_rotation_in_port"

    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mDeferSplitRotationInPort:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskOrganizerInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " mSplitScreenCreateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    invoke-static {v1}, Landroid/app/ActivityTaskManager;->splitCreateModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    if-eqz v1, :cond_1

    const-string v1, " mChangeSplitLayoutForLaunchAdjacent=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    if-eq v1, v2, :cond_2

    const-string v1, " mExitSplitScreenTopTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    if-eq v1, v2, :cond_3

    const-string v1, " mSplitToFreeformTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    if-eqz v1, :cond_4

    const-string v1, " mExitSplitScreenStageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " mChangeToHorizontalSplitLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeToHorizontalSplitLayout:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitFeasibleMode:I

    if-eq v1, v2, :cond_5

    const-string v1, " mSplitFeasibleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitFeasibleMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mAssistantActivityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_6

    const-string v1, " mAssistantActivityIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mAssistantActivityIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mRequestedSplitRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    const-string v1, " mRequestedSplitRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mRequestedSplitRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mDeferSplitRotationInPort:Z

    if-eqz v1, :cond_8

    const-string v1, " mDeferSplitRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mDeferSplitRotationInPort:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

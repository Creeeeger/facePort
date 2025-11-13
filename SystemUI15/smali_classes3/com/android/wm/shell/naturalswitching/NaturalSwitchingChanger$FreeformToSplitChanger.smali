.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToSplitChanger;
.super Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeLayout()V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_SA_LOGGING:Z

    if-eqz v0, :cond_1

    const-string v0, "1041"

    const-string v1, "Freeform -> Split"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1000"

    const-string v1, "From Popup view_HandleGesture"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_MULTI_SPLIT:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mIsMainDisplay:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mCurrentSplitMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const-string v0, "1021"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    iget-boolean v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    iget-object v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onFreeformToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;Z)V

    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;I)V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRunAfterTransitionStarted:Ljava/lang/Runnable;

    return-void
.end method

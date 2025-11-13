.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToFreeformChanger;
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
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_SA_LOGGING:Z

    if-eqz v0, :cond_0

    const-string v0, "1041"

    const-string v1, "Split -> Freeform"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2004"

    const-string v1, "From Split view_HandleGesture"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveSplitToFreeform(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)V

    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;I)V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRunAfterTransitionStarted:Ljava/lang/Runnable;

    return-void
.end method

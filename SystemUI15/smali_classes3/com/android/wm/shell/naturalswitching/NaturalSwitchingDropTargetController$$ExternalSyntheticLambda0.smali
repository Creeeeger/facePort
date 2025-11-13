.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

.field public final synthetic f$1:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/view/GestureDetector;

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v7, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    return-void
.end method

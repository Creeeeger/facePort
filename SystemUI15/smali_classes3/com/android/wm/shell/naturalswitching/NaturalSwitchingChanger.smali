.class public abstract Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentSplitMode:I

.field public final mDropBounds:Landroid/graphics/Rect;

.field public mHideLayoutCallback:Ljava/util/function/Consumer;

.field public mIsMainDisplay:Z

.field public mNeedToReparentCell:Z

.field public mRequestedCreateMode:I

.field public mRunAfterTransitionStarted:Ljava/lang/Runnable;

.field public mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mToPosition:I

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mCurrentSplitMode:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRunAfterTransitionStarted:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public abstract changeLayout()V
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

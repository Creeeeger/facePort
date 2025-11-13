.class public final Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastShowingTime:J

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mPackagesShownInSession:Landroid/util/ArraySet;

.field public final mPendingTasks:Landroid/util/ArraySet;

.field public final mTimeoutRunnable:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mLastShowingTime:J

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

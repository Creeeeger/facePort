.class public final Lcom/android/wm/shell/back/BackAnimationRunner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimationCancelled:Z

.field public final mCallback:Landroid/window/IOnBackInvokedCallback;

.field public final mContext:Landroid/content/Context;

.field public final mCujType:I

.field public final mRunner:Landroid/view/IRemoteAnimationRunner;

.field public mWaitingAnimation:Z


# direct methods
.method public constructor <init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mCallback:Landroid/window/IOnBackInvokedCallback;

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mRunner:Landroid/view/IRemoteAnimationRunner;

    iput p4, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mCujType:I

    iput-object p3, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public shouldMonitorCUJ([Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    array-length p1, p1

    if-lez p1, :cond_0

    iget p0, p0, Lcom/android/wm/shell/back/BackAnimationRunner;->mCujType:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

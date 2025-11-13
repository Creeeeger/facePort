.class public Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewRootWrapper"
.end annotation


# instance fields
.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public blacklist addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    return-void
.end method

.method blacklist addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    return-void
.end method

.method blacklist dipToPx(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public blacklist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method blacklist getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    return-void
.end method

.method blacklist removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    return-void
.end method

.method blacklist requestInvalidateRootRenderNode()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    return-void
.end method

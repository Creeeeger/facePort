.class public final Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDismissButtonShowing:Z

.field public final mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

.field public mDismissingIconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    new-instance v0, Lcom/android/wm/shell/common/DismissViewManager;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/common/DismissViewManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissViewManager;->createDismissView()V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final show(Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "FreeformContainer"

    const-string v1, "[FreeformContainerDismissButtonView] show()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object v0, v0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DismissView;->updateView(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getOverrideStableInsets(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-static {p1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissViewManager;->show()V

    return-void
.end method

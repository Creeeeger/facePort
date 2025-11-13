.class public final Lcom/android/wm/shell/pip/phone/PipDismissButtonView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/wm/shell/common/DismissViewManager;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/common/DismissViewManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    return-void
.end method


# virtual methods
.method public final hideDismissTargetMaybe()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissViewManager;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DismissView;->hide(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/common/DismissView;->updateView(ZZ)V

    :cond_0
    return-void
.end method

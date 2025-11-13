.class public abstract Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public doneCallback:Ljava/lang/Runnable;

.field public isShown:Z

.field public message:Ljava/lang/Integer;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    return-void
.end method

.method public configChanged()V
    .locals 0

    return-void
.end method

.method public onViewAttached()V
    .locals 0

    return-void
.end method

.method public onViewDetached()V
    .locals 0

    return-void
.end method

.method public resolveMessage(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public show(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->doneCallback:Ljava/lang/Runnable;

    return-void
.end method

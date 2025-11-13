.class public final Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic val$display:Landroid/view/Display;

.field public final synthetic val$navBar:Lcom/android/systemui/navigationbar/NavigationBar;

.field public final synthetic val$result:Lcom/android/internal/statusbar/RegisterStatusBarResult;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;Lcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/Display;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;->val$result:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;->val$navBar:Lcom/android/systemui/navigationbar/NavigationBar;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;->val$display:Landroid/view/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;->val$result:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;->val$navBar:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;->val$display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;->val$result:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget-object v2, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    iget v4, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    iget-boolean v5, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/navigationbar/NavigationBar;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

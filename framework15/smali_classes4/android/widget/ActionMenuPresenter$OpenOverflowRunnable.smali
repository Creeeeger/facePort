.class Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private greylist-max-o mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/ActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->tryShow(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-static {v1, v2}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmOverflowPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-static {v1, v2}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmOverflowPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmPostedOpenRunnable(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)V

    return-void
.end method

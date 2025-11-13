.class public final Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarPresenter;Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->mPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->mPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow$1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->mPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPostedOpenRunnable:Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

    return-void
.end method

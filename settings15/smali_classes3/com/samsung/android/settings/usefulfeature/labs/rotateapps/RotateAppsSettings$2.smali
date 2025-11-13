.class public final Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDeletePrivateSpace:Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;

.field public mHandler:Landroid/os/Handler;

.field public mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;-><init>(Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;)V

    iput-object v0, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->mDeletePrivateSpace:Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;

    return-void
.end method


# virtual methods
.method public deletePrivateSpace()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {v0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->deletePrivateSpace()Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    move-result-object v0

    sget-object v1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->DELETE_PS_ERROR_NONE:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->showSuccessfulDeletionToast()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->DELETE_PS_ERROR_INTERNAL:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->showDeletionInternalErrorToast()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7f8

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {p3}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "PrivateSpaceDeleteProg"

    const-string v0, "Unexpected attempt to delete non-existent PS"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    :cond_0
    const p3, 0x7f0d0555

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$2;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->mDeletePrivateSpace:Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->mDeletePrivateSpace:Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public setPrivateSpaceMaintainer(Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment$Injector;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeletionProgressFragment;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    return-void
.end method

.method public showDeletionInternalErrorToast()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080578

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f141d3f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, p0, v2, v0}, Landroid/widget/Toast;->makeCustomToastWithIcon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showSuccessfulDeletionToast()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080578

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f141d43

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, p0, v2, v0}, Landroid/widget/Toast;->makeCustomToastWithIcon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

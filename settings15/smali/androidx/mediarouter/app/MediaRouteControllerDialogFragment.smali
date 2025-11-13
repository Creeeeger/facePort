.class public Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field public mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field public mUseDynamicGroup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mUseDynamicGroup:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mUseDynamicGroup:Z

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateLayout()V

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mUseDynamicGroup:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-direct {v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {v0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    :goto_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    return-object p0
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mUseDynamicGroup:Z

    if-nez p0, :cond_0

    check-cast v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->clearGroupListAnimation(Z)V

    :cond_0
    return-void
.end method

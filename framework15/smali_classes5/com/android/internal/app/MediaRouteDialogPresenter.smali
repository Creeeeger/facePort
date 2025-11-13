.class public abstract Lcom/android/internal/app/MediaRouteDialogPresenter;
.super Ljava/lang/Object;
.source "MediaRouteDialogPresenter.java"


# static fields
.field private static final blacklist CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

.field private static final blacklist CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaRouter"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    invoke-static {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1030132

    goto :goto_0

    :cond_0
    const v0, 0x103012e

    :goto_0
    nop

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;IZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;IZ)Landroid/app/Dialog;
    .locals 3

    const-class v0, Landroid/media/MediaRouter;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {v2, p0, p3}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v2, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {v2, p0, p3, p4}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    invoke-virtual {v2, p2}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method public static blacklist showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .locals 7

    const-string/jumbo v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "MediaRouter"

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v3, "showDialog(): Route controller dialog already showing!"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    new-instance v4, Lcom/android/internal/app/MediaRouteControllerDialogFragment;

    invoke-direct {v4}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;-><init>()V

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v4

    :cond_2
    :goto_0
    const-string v3, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string/jumbo v3, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    new-instance v4, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {v4}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    invoke-virtual {v4, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    invoke-virtual {v4, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v4
.end method

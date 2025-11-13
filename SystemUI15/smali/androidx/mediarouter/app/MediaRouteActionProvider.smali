.class public Landroidx/mediarouter/app/MediaRouteActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mButton:Landroidx/mediarouter/app/MediaRouteButton;

.field public final mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

.field public final mSelector:Landroidx/mediarouter/media/MediaRouteSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    sget-object v0, Landroidx/mediarouter/app/MediaRouteDialogFactory;->sDefault:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    return-void
.end method


# virtual methods
.method public final onCreateActionView()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    if-eqz v0, :cond_0

    const-string v0, "MRActionProvider"

    const-string v1, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old menu item..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton;

    iget-object v1, p0, Landroidx/core/view/ActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    iget-boolean v1, v0, Landroidx/mediarouter/app/MediaRouteButton;->mCheatSheetEnabled:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    iput-boolean v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mCheatSheetEnabled:Z

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton;->updateContentDescription()V

    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-eqz v1, :cond_6

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v2, v1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v3, v0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    :cond_2
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v3, v0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    :cond_3
    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    if-eqz v1, :cond_5

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    return-object p0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onPerformDefaultAction()Z
    .locals 9

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_1
    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_3

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_11

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v2

    const/4 v4, 0x1

    const-string v5, "selector must not be null"

    const-string v6, "selector"

    const-string v7, "MediaRouteButton"

    if-eqz v2, :cond_9

    const-string v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string p0, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_4
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;

    invoke-direct {v3}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;-><init>()V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-eqz p0, :cond_8

    invoke-virtual {v3}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    iget-object v5, v3, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v5, p0}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iput-object p0, v3, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-nez v5, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_5
    iget-object v7, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v5, v3, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v5, :cond_7

    iget-boolean v6, v3, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz v6, :cond_6

    check-cast v5, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {v5, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    goto :goto_3

    :cond_6
    check-cast v5, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v5, p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    :cond_7
    :goto_3
    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p0, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p0, v0, v3, v2, v4}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    goto/16 :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    if-eqz v8, :cond_a

    const-string p0, "showDialog(): Route controller dialog already showing!"

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;

    invoke-direct {v7}, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;-><init>()V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-eqz p0, :cond_10

    iget-object v5, v7, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v5, :cond_d

    iget-object v5, v7, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v5, :cond_c

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v8, Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-direct {v8, v5, v3}, Landroidx/mediarouter/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    move-object v3, v8

    goto :goto_4

    :cond_b
    sget-object v5, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    :goto_4
    iput-object v3, v7, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_c
    iget-object v3, v7, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v3, :cond_d

    sget-object v3, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v3, v7, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_d
    iget-object v3, v7, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v3, p0}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iput-object p0, v7, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v3, v7, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-nez v3, :cond_e

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_e
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v3, v7, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v3, :cond_f

    iget-boolean v5, v7, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mUseDynamicGroup:Z

    if-eqz v5, :cond_f

    check-cast v3, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {v3, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    :cond_f
    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p0, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p0, v0, v7, v2, v4}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :goto_5
    move v0, v4

    :goto_6
    return v0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The activity must be a subclass of FragmentActivity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    return v0
.end method

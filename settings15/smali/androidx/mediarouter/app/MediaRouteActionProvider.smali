.class public Landroidx/mediarouter/app/MediaRouteActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButton:Landroidx/mediarouter/app/MediaRouteButton;

.field public final mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

.field public final mRouter:Landroidx/mediarouter/media/MediaRouter;

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

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final isVisible()Z
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p0

    return p0
.end method

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

    if-eqz v1, :cond_7

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v2, v1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget-boolean v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v2, v4}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    :cond_2
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v2, v1, v4, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    :cond_3
    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    iget-boolean v1, v0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    if-eqz v1, :cond_5

    iput-boolean v3, v0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshVisibility()V

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    if-eqz v1, :cond_6

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    return-object p0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "selector must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onPerformDefaultAction()Z
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->mButton:Landroidx/mediarouter/app/MediaRouteButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->showDialog()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

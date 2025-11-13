.class final Landroid/inputmethodservice/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/NavigationBarController$Impl;,
        Landroid/inputmethodservice/NavigationBarController$Callback;
    }
.end annotation


# instance fields
.field private final blacklist mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/inputmethodservice/NavigationBarController$Impl;

    invoke-direct {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/inputmethodservice/NavigationBarController$Callback;->NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;

    :goto_0
    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    return-void
.end method


# virtual methods
.method blacklist isShown()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->isShown()Z

    move-result v0

    return v0
.end method

.method blacklist onDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onDestroy()V

    return-void
.end method

.method blacklist onNavButtonFlagsChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->onNavButtonFlagsChanged(I)V

    return-void
.end method

.method blacklist onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V

    return-void
.end method

.method blacklist onViewInitialized()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onViewInitialized()V

    return-void
.end method

.method blacklist onWindowShown()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onWindowShown()V

    return-void
.end method

.method blacklist toDebugString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->toDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    return-void
.end method

.method blacklist updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/NavigationBarController$Callback;->updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

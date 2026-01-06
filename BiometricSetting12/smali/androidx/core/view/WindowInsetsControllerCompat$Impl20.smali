.class Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field protected final mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "view"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    return-void
.end method

.method private hideForType(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    return-void

    :sswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    return-void

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private showForType(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$1;

    invoke-direct {v2, p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$1;-><init>(Landroidx/core/view/WindowInsetsControllerCompat$Impl20;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    return-void

    :sswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetWindowFlag(I)V

    return-void

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    return-void
.end method

.method controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "types",
            "durationMillis",
            "interpolator",
            "cancellationSignal",
            "listener"
        }
    .end annotation

    return-void
.end method

.method getSystemBarsBehavior()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method hide(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeMask"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    and-int v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->hideForType(I)V

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    return-void
.end method

.method setSystemBarsBehavior(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "behavior"
        }
    .end annotation

    const/16 v0, 0x800

    const/16 v1, 0x1000

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1800

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setSystemUiFlag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "systemUiFlag"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected setWindowFlag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowFlag"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method show(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeMask"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    and-int v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->showForType(I)V

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "systemUiFlag"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int v2, p1

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected unsetWindowFlag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowFlag"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.class final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$FloatingOnAttachStateChangeListener;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingOnAttachStateChangeListener"
.end annotation


# instance fields
.field private final blacklist mFloatingToolbarPopup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 1
    .param p1, "floatingToolbarPopup"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    .line 2008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2009
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$FloatingOnAttachStateChangeListener;->mFloatingToolbarPopup:Ljava/lang/ref/WeakReference;

    .line 2010
    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 2014
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 2018
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$FloatingOnAttachStateChangeListener;->mFloatingToolbarPopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$FloatingOnAttachStateChangeListener;->mFloatingToolbarPopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->onDetachFromWindow()V

    .line 2021
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2022
    return-void
.end method

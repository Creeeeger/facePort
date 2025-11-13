.class Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mNewRect:Landroid/graphics/Rect;

.field private final blacklist mOldRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 69
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newLeft"    # I
    .param p3, "newRight"    # I
    .param p4, "newTop"    # I
    .param p5, "newBottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldRight"    # I
    .param p8, "oldTop"    # I
    .param p9, "oldBottom"    # I

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 81
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmOrientation(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setIsMovingStarted(Z)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {v1, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fputmOrientation(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;I)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p6, p7, p8, p9}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setWidthChanged(Z)V

    .line 91
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 93
    :cond_1
    return-void
.end method

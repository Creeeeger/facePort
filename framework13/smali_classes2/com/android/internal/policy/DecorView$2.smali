.class Lcom/android/internal/policy/DecorView$2;
.super Landroid/view/ViewOutlineProvider;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 510
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 513
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10503ab

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 516
    .local v0, "radius":I
    iget-object v2, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v2

    .line 517
    .local v2, "actions":Lcom/samsung/android/multiwindow/MultiSplitActions;
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getActivityEmbeddingState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 520
    nop

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 520
    invoke-static {v3, v4, v1, v1, v0}, Lcom/samsung/android/util/SemViewUtils;->getSmoothLeftRoundedRect(IIIII)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 523
    :cond_0
    nop

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 523
    invoke-static {v3, v4, v1, v1, v0}, Lcom/samsung/android/util/SemViewUtils;->getSmoothRightRoundedRect(IIIII)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 527
    :cond_1
    nop

    .line 528
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 527
    invoke-static {v3, v4, v1, v1, v0}, Lcom/samsung/android/util/SemViewUtils;->getSmoothRoundedRect(IIIII)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 530
    .end local v0    # "radius":I
    .end local v2    # "actions":Lcom/samsung/android/multiwindow/MultiSplitActions;
    :goto_0
    goto :goto_1

    .line 531
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v1, v0, v2}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 533
    :goto_1
    return-void
.end method

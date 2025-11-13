.class public Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;
.super Landroid/widget/GridView;
.source "GlobalActionsContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SamsungGlobalActionsGridView"
.end annotation


# instance fields
.field blacklist mIsVerticalMode:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isVerticalMode"    # Z

    .line 632
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->this$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;

    .line 633
    invoke-direct {p0, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 634
    iput-boolean p3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->mIsVerticalMode:Z

    .line 635
    invoke-static {p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->-$$Nest$fgetmItemHorizontalSpacing(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->setHorizontalSpacing(I)V

    .line 636
    if-eqz p3, :cond_0

    .line 637
    invoke-static {p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->-$$Nest$fgetmItemVerticalSpacingPort(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 639
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->-$$Nest$fgetmItemVerticalSpacingLand(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->setVerticalSpacing(I)V

    .line 640
    invoke-static {p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->-$$Nest$fgetmItemWidthLand(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->setColumnWidth(I)V

    .line 642
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->setFocusable(Z)V

    .line 643
    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->setVerticalScrollBarEnabled(Z)V

    .line 644
    return-void
.end method


# virtual methods
.method public blacklist isVerticalMode()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->mIsVerticalMode:Z

    return v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 653
    const/4 v0, 0x0

    return v0

    .line 655
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setAppbarLayoutListener(Lcom/google/android/material/appbar/AppBarLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 487
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 489
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmExpandableListView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/widget/SemExpandableListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/SemExpandableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmNestedScrollView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 492
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_6

    .line 494
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v2

    sub-float/2addr p1, v2

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v2

    sub-float/2addr p1, v2

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    .line 495
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    .line 497
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    .line 498
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    .line 499
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    goto/16 :goto_0

    .line 501
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result v2

    sub-float/2addr p2, v2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    .line 502
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 503
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmIsListTop(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    if-nez p1, :cond_9

    .line 504
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmNestedScrollView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 505
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    return v1

    .line 508
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F

    move-result p1

    const/high16 p2, -0x3ee00000    # -10.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    .line 509
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    if-eqz p1, :cond_9

    .line 510
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmNestedScrollView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 511
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    return v1

    .line 516
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_9

    .line 517
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 518
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$msetCalculateAppbarExpanded(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    .line 520
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V

    :cond_9
    :goto_0
    return v0
.end method

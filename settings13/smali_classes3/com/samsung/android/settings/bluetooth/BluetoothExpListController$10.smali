.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;
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

    .line 539
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 543
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmExpandableListView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/widget/SemExpandableListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/SemExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BluetoothExpListController"

    const-string v1, "IllegalArgumentException "

    .line 545
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmExpandableListView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/widget/SemExpandableListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SemExpandableListView;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmIsListTop(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    if-nez p1, :cond_1

    .line 551
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmNestedScrollView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 555
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 556
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$msetCalculateAppbarExpanded(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    :cond_2
    return v0
.end method

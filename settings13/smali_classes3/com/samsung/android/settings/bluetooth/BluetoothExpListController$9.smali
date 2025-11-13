.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

    .line 525
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 531
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 532
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmIsListTop(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Z)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0, p3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fputmIsListTop(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Z)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

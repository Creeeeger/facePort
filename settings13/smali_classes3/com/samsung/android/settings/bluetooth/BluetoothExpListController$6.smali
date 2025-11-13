.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$6;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
.source "BluetoothExpListController.java"


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

    .line 460
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$6;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 0

    .line 463
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$6;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmIsListTop(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$6;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

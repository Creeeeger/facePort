.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Landroid/widget/SemExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->init()V
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

    .line 386
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 389
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz p1, :cond_0

    .line 393
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->onItemClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-eqz p1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    if-eqz p1, :cond_1

    .line 403
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->onItemClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

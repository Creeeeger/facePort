.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


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

    .line 472
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    .line 475
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    if-eqz p1, :cond_0

    .line 476
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    goto :goto_0

    .line 478
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    :goto_0
    return-void
.end method

.class public final Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final deviceList:Ljava/util/ArrayList;

.field public final noDevicesTextView:Landroid/widget/TextView;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->noDevicesTextView:Landroid/widget/TextView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->deviceList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->deviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->noDevicesTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->noDevicesTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->deviceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->deviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->deviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter$ViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->deviceList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    const v0, 0x7f0d084f

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSettings$ConnectedDevicesAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.class public final Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter$LeAudioDeviceBaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContainerLayout:Landroid/view/ViewGroup;

.field public final mDeviceIcon:Landroid/widget/ImageView;

.field public final mDeviceName:Landroid/widget/TextView;

.field public final mDeviceSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a04f2

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter$LeAudioDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a1041

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter$LeAudioDeviceBaseViewHolder;->mDeviceName:Landroid/widget/TextView;

    const v0, 0x7f0a0f81

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter$LeAudioDeviceBaseViewHolder;->mDeviceSummary:Landroid/widget/TextView;

    const v0, 0x7f0a0797

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter$LeAudioDeviceBaseViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    return-void
.end method

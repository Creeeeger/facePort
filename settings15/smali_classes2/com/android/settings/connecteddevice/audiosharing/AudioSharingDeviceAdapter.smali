.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDevices:Ljava/util/List;

.field public final mOnClickListener:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$OnClickListener;

.field public final mType:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$OnClickListener;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mDevices:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mOnClickListener:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$OnClickListener;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mType:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;

    iget-object p0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;->mButtonView:Landroid/widget/Button;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mType:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$ActionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f14048d

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f14049b

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iget-object v0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;->mButtonView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;->mButtonView:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;I)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const-string p0, "AudioSharingDeviceAdapter"

    const-string p1, "bind view skipped due to button view is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0d0079

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;Landroid/view/View;)V

    return-object p2
.end method

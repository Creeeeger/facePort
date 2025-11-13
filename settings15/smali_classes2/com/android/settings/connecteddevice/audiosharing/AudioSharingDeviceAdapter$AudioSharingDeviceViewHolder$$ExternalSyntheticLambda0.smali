.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;

    iput p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;

    iget p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder$$ExternalSyntheticLambda0;->f$1:I

    iget-object p1, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$AudioSharingDeviceViewHolder;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;

    iget-object v0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mOnClickListener:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$OnClickListener;

    iget-object p1, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    invoke-interface {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceAdapter$OnClickListener;->onClick()V

    return-void
.end method

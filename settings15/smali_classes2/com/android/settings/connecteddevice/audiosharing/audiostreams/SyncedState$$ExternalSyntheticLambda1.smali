.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

.field public final synthetic f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

.field public final synthetic f$3:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;->f$3:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda1;->f$3:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d008e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0263

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f140f91

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V

    const p0, 0x7f1406c8

    invoke-virtual {v3, p0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

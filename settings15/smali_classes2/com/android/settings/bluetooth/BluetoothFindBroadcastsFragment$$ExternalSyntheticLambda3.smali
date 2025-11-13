.class public final synthetic Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

.field public final synthetic f$1:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda3;->f$1:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda3;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda3;->f$1:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda3;->f$2:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "setPositiveButton: clicked"

    const-string v1, "BtFindBroadcastsFrg"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-nez v0, :cond_0

    const-string p0, "BluetoothLeBroadcastMetadata is null, do nothing."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    iget-object v1, p2, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addSource(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    :goto_0
    return-void
.end method

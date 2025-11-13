.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;

.field public final synthetic f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

.field public final synthetic f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

.field public final synthetic f$3:Landroid/bluetooth/BluetoothLeBroadcastMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$3:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$3:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$3:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->getFragment()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->getFragment()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getBroadcastName(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

    invoke-direct {v2, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1404c6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mTitle:Ljava/lang/String;

    iput-object p0, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mSubTitle1:Ljava/lang/String;

    const p0, 0x7f1404ca

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mSubTitle2:Ljava/lang/String;

    const p0, 0x7f1404bc

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mRightButtonText:Ljava/lang/String;

    new-instance p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->mRightButtonOnClickListener:Ljava/util/function/Consumer;

    const/16 p0, 0x832

    invoke-static {v0, v2, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;->f$3:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamState()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    move-result-object v3

    sget-object v4, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->ADD_SOURCE_WAIT_FOR_RESPONSE:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getAudioStreamBroadcastId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceFailedToConnect(I)V

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;->getSourceOriginForLogging()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x7a2

    iget-object v6, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {v6, v3, v5, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    new-instance v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AddSourceWaitForResponseState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

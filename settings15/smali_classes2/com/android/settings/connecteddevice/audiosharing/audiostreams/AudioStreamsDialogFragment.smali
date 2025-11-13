.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDialogBuilder:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

.field public final mDialogId:I


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;->mDialogBuilder:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

    iput p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;->mDialogId:I

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const-string v1, "AudioStreamsDialogFragment"

    if-nez v0, :cond_0

    const-string p0, "The host fragment is not added to the activity!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;I)V

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    iget p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;->mDialogId:I

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment;->mDialogBuilder:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDialogFragment$DialogBuilder;->build()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AudioStreamsDialogFragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Dialog already showing, ignore"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

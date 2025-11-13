.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingConfirmDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x825

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory;->newBuilder(Landroidx/fragment/app/FragmentActivity;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;

    move-result-object p0

    const p1, 0x7f140484

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitle(I)V

    const p1, 0x7f08039e

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setTitleIcon(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mIsCustomBodyEnabled:Z

    const v0, 0x7f140483

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->setCustomMessage(I)V

    new-instance v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f141b4c

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->build()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

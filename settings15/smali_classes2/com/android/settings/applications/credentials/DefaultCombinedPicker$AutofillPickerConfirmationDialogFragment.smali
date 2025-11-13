.class public Lcom/android/settings/applications/credentials/DefaultCombinedPicker$AutofillPickerConfirmationDialogFragment;
.super Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment$ConfirmationDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/credentials/DefaultCombinedPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutofillPickerConfirmationDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment$ConfirmationDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;

    iget-object v0, v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mCancelListener:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment$ConfirmationDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

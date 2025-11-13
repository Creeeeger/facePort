.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;
.super Ljava/lang/Object;
.source "FingerprintSettingsMultiSelect.java"

# interfaces
.implements Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprint()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 676
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fputmDeleteDialog(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;)V

    return-void
.end method

.method public onNegativeClick()V
    .locals 2

    .line 671
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x2025

    const/16 v1, 0x2028

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 9

    .line 658
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fgetmSelectionChecklist(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 659
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$mgetNumOfCheckedList(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v2

    if-lt v2, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 661
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$fgetmSelectionChecklist(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x2025

    const/16 v5, 0x2029

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;->-$$Nest$mdeleteFingerprintSequentially(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsMultiSelect;)V

    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    return-void
.end method

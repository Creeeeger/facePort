.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "FingerprintSettingsEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initRenameEditTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

.field final synthetic val$warning:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;ILjava/lang/String;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$2;->val$warning:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 495
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 497
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    .line 498
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmTextInputLayout(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$2;->val$warning:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method

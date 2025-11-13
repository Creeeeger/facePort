.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;
.super Ljava/lang/Object;
.source "FingerprintSettingsEdit.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Ljava/lang/String;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->val$warning:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    monitor-enter p0

    .line 480
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/16 v0, 0x32

    if-lt p1, v0, :cond_0

    .line 481
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    .line 482
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmTextInputLayout(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->val$warning:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    .line 485
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmTextInputLayout(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 444
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 447
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fputmEditFingerName(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p2

    .line 451
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result p2

    if-le p2, p3, :cond_0

    .line 452
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->-$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 455
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmOriginalName(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Ljava/lang/String;

    move-result-object p4

    .line 456
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 465
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmSaveButton(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 466
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmSaveButton(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    if-eqz p2, :cond_6

    .line 469
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 457
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmSaveButton(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/Button;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 458
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmSaveButton(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 461
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 463
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$fgetmEditText(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_rename_enter_text:I

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(I)V

    :cond_6
    :goto_2
    return-void
.end method

.class Lcom/android/settings/EditPinPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mPinListener:Lcom/android/settings/IccLockSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onBindDialogView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const p0, 0x1020003

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_0

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTextAlignment(I)V

    :cond_0
    return-void
.end method

.method public final onDialogClosed(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/IccLockSettings;

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    goto/16 :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x8

    if-le p0, p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget p0, v0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eq p0, p1, :cond_6

    const/4 p1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq p0, v3, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f142c5e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    iput v4, v0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    iput-object p1, v0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/IccLockSettings;->showPinDialog$1()V

    goto :goto_1

    :cond_3
    iput-object p1, v0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    new-instance p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;

    iget-object p1, v0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;-><init>(Lcom/android/settings/IccLockSettings;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_4
    iget-object p0, v0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    iput v1, v0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    iput-object p1, v0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/IccLockSettings;->showPinDialog$1()V

    goto :goto_1

    :cond_5
    iget-object p0, v0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iput v4, v0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    iput-object p1, v0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/IccLockSettings;->showPinDialog$1()V

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/android/settings/IccLockSettings$SetIccLockEnabled;

    iget-boolean p1, v0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v1, v0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/IccLockSettings$SetIccLockEnabled;-><init>(Lcom/android/settings/IccLockSettings;ZLjava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p0, v0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    :goto_0
    iget-object p0, v0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const p1, 0x7f142c23

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/IccLockSettings;->showPinDialog$1()V

    :cond_8
    :goto_1
    return-void
.end method

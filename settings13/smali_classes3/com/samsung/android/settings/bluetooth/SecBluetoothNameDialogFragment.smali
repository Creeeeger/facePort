.class abstract Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SecBluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;
    }
.end annotation


# instance fields
.field private budsNameLimit:I

.field mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDeviceNameEditText:Landroid/widget/EditText;

.field private mDeviceNameEdited:Z

.field private mDeviceNameErrorText:Landroid/widget/TextView;

.field private mNameEditedButtonEnabled:Z

.field private mOkButton:Landroid/widget/Button;

.field private mRenameBottomMargin:Landroid/widget/Space;


# direct methods
.method public static synthetic $r8$lambda$EhLoX07Wz-mEHnmxF0B-Al3yJNI(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceNameEditText(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceNameErrorText(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenameBottomMargin(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/Space;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mRenameBottomMargin:Landroid/widget/Space;

    return-object p0
.end method

.method constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->budsNameLimit:I

    return-void
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 12

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 160
    sget v1, Lcom/android/settings/R$layout;->sec_bluetooth_device_rename_popup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 161
    sget v1, Lcom/android/settings/R$id;->rename_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    .line 162
    sget v1, Lcom/android/settings/R$id;->bluetooth_rename_error_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameErrorText:Landroid/widget/TextView;

    .line 164
    sget v1, Lcom/android/settings/R$id;->rename_edit_text_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mRenameBottomMargin:Landroid/widget/Space;

    .line 167
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->budsNameLimit:I

    const/4 v2, 0x1

    const/16 v3, 0x3e

    const/4 v4, 0x0

    if-lez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v11, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameErrorText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mRenameBottomMargin:Landroid/widget/Space;

    iget v10, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->budsNameLimit:I

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/Space;I)V

    aput-object v11, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;

    invoke-direct {v6, p0, v3}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;I)V

    aput-object v6, v5, v4

    new-instance v4, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    .line 174
    invoke-virtual {v6}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v4, v5, v2

    .line 173
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 176
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 178
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object v0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const-string v0, "SecBluetoothNameDialogFragment"

    const-string v1, "afterTextChanged :: "

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 248
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 252
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->budsNameLimit:I

    const/4 v5, 0x1

    if-lez v3, :cond_3

    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->budsNameLimit:I

    if-gt v3, v6, :cond_5

    .line 259
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    if-eq v0, v4, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    move v2, v5

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mNameEditedButtonEnabled:Z

    .line 261
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz p1, :cond_5

    .line 262
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mNameEditedButtonEnabled:Z

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x3e

    if-gt v3, v6, :cond_5

    .line 267
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_4

    if-eq v0, v4, :cond_4

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    move v2, v5

    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mNameEditedButtonEnabled:Z

    .line 269
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz p1, :cond_5

    .line 270
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mNameEditedButtonEnabled:Z

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "SecBluetoothNameDialogFragment"

    const-string p1, "beforeTextChanged ::"

    .line 286
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
.end method

.method protected abstract getDeviceName()Ljava/lang/String;
.end method

.method protected abstract getDialogTitle()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "device_name"

    .line 118
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name_edited"

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEdited:Z

    const-string v1, "remote_device_rename_edited"

    .line 120
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mNameEditedButtonEnabled:Z

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_CHANGE_DEVICE_NAME:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    if-lez p1, :cond_1

    .line 129
    iput p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->budsNameLimit:I

    .line 134
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->getDialogTitle()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 136
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->bluetooth_rename_button:I

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)V

    .line 137
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->common_cancel:I

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 143
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 144
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 145
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_dashboard_tab_selected_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 203
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    .line 204
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mNameEditedButtonEnabled:Z

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Button;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 191
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 210
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 215
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 218
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mNameEditedButtonEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$1;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mDeviceNameEdited:Z

    const-string v1, "device_name_edited"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mNameEditedButtonEnabled:Z

    const-string v0, "remote_device_rename_edited"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "SecBluetoothNameDialogFragment"

    const-string p3, "onTextChanged ::"

    .line 291
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 300
    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mNameEditedButtonEnabled:Z

    :cond_1
    return-void
.end method

.method protected abstract setDeviceName(Ljava/lang/String;)V
.end method

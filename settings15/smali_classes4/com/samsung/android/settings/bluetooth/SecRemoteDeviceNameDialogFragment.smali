.class public Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public budsNameLimit:I

.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public mDeviceNameEditText:Landroid/widget/EditText;

.field public mDeviceNameEdited:Z

.field public mDeviceNameErrorText:Landroid/widget/TextView;

.field public mNameEditedButtonEnabled:Z

.field public mOkButton:Landroid/widget/Button;

.field public mRenameBottomMargin:Landroid/widget/Space;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->budsNameLimit:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    const-string v0, "SecBluetoothNameDialogFragment"

    const-string v1, "afterTextChanged :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->budsNameLimit:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v3, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v7, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->budsNameLimit:I

    if-gt v3, v7, :cond_7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_3

    if-eq v0, v4, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    move v2, v6

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mNameEditedButtonEnabled:Z

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mNameEditedButtonEnabled:Z

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x3e

    if-gt v3, v7, :cond_7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_6

    if-eq v0, v4, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    move v2, v6

    :cond_6
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mNameEditedButtonEnabled:Z

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mNameEditedButtonEnabled:Z

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "SecBluetoothNameDialogFragment"

    const-string p1, "beforeTextChanged ::"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f7

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cached_device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v3, "device_name"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "device_name_edited"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEdited:Z

    const-string/jumbo v3, "remote_device_rename_edited"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mNameEditedButtonEnabled:Z

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_2

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_CHANGE_DEVICE_NAME:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v3, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v3, p1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    const/4 v3, 0x3

    aget-byte p1, p1, v3

    if-lez p1, :cond_2

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->budsNameLimit:I

    :cond_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1406eb

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0d0840

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0c89

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    const v4, 0x7f0a022d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameErrorText:Landroid/widget/TextView;

    const v4, 0x7f0a0c8a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Space;

    iput-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mRenameBottomMargin:Landroid/widget/Space;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->budsNameLimit:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v7, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameErrorText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mRenameBottomMargin:Landroid/widget/Space;

    iget v12, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->budsNameLimit:I

    invoke-direct {v7, v12}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    iput-object v10, v7, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameEditText:Landroid/widget/EditText;

    iput-object v9, v7, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object v11, v7, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mRenameBottomMargin:Landroid/widget/Space;

    iput-boolean v6, v7, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->isSmepFilter:Z

    aput-object v7, v5, v2

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v7, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;-><init>(Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;)V

    aput-object v7, v5, v2

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x3e

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;)V

    const v2, 0x7f1407b8

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f1409b6

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0605b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mOkButton:Landroid/widget/Button;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mNameEditedButtonEnabled:Z

    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Button;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mNameEditedButtonEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$1;-><init>(Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_name_edited"

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "remote_device_rename_edited"

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mNameEditedButtonEnabled:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "SecBluetoothNameDialogFragment"

    const-string/jumbo p3, "onTextChanged ::"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mOkButton:Landroid/widget/Button;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mNameEditedButtonEnabled:Z

    :cond_1
    return-void
.end method

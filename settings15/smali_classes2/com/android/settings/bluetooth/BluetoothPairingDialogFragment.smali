.class public Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field public mDialog:Landroidx/appcompat/app/AlertDialog;

.field public mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field public mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

.field public mPairingView:Landroid/widget/EditText;

.field public mPairingViewErrorText:Landroid/widget/TextView;

.field public mPairingViewMargin:Landroid/widget/Space;

.field public mTempUserInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mTempUserInput:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v1, v1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v5, 0x10

    if-lt v2, v5, :cond_1

    if-nez v1, :cond_2

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    if-nez v1, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x11

    if-ge p2, p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mTempUserInput:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final createConfirmationDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createConfirmationDialog: isBondedInitiatedLocally = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v1, v1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", settingIsForegroundActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v1, v1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getBlockState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v1, v1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    const-string v2, "BTPairingDialogFragment"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f140785

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f14220c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v1, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    const v2, 0x7f1409b6

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez v1, :cond_0

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f14220b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final createView()Landroid/view/View;
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u200e"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-object v4, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a095e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0b5e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v5, v5, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v5, :pswitch_data_0

    const/4 v5, -0x1

    goto :goto_0

    :pswitch_0
    move v5, v9

    goto :goto_0

    :pswitch_1
    move v5, v8

    goto :goto_0

    :pswitch_2
    move v5, v7

    goto :goto_0

    :pswitch_3
    move v5, v6

    :goto_0
    const v10, 0x7f140776

    const-string v11, "\n\n"

    const/16 v12, 0x8

    if-eq v5, v7, :cond_2

    if-eq v5, v9, :cond_1

    if-eq v5, v8, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1406db

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v4, v1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    if-nez v4, :cond_4

    iget-boolean v4, v1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez v4, :cond_4

    iget v1, v1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    if-ne v1, v7, :cond_4

    invoke-static {v2, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_1
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140709

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getPairingContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const v2, 0x7f1406c5

    :try_start_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getPairingContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    if-nez v5, :cond_3

    iget-boolean v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez v5, :cond_3

    iget v4, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    if-ne v4, v7, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getPairingContent()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Unknown Device"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x265

    return p0
.end method

.method public getPairingViewText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hideSoftInput()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "BTPairingDialogFragment"

    const-string v0, "onCancel ::"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->hideSoftInput()V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v0, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateBlockingDevice(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const-string p1, "onClick :: which = "

    const-string v0, ", isBondedInitiatedLocally = "

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v0, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", settingIsForegroundActivity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v0, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", getBlockState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    const-string v1, "BTPairingDialogFragment"

    invoke-static {p1, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v4, v3}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    :goto_0
    iput-boolean v0, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsAcceptPair:Z

    goto :goto_2

    :cond_0
    const/4 v4, -0x3

    if-ne p2, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    if-nez v5, :cond_1

    iget-boolean v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez v5, :cond_1

    iget v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    if-ne v5, v0, :cond_1

    invoke-virtual {v4, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateBlockingDevice(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    goto :goto_2

    :cond_2
    if-ne p2, v2, :cond_5

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez v5, :cond_4

    iget v5, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    if-ne v5, v0, :cond_3

    invoke-virtual {v4, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateBlockingDevice(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateBlockingDevice(Z)V

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v4, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    packed-switch v4, :pswitch_data_1

    move p1, v1

    goto :goto_3

    :pswitch_2
    move p1, v6

    goto :goto_3

    :pswitch_3
    move p1, v5

    goto :goto_3

    :pswitch_4
    move p1, v0

    :goto_3
    :pswitch_5
    if-eq p1, v1, :cond_d

    const v4, 0x7f141fff

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_9

    if-eq p1, v0, :cond_8

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    move-object v0, v3

    goto :goto_4

    :cond_6
    const v0, 0x7f140ef6

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const v0, 0x7f140ef7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    const v0, 0x7f140ef8

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const v0, 0x7f140ef9

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eq p2, v2, :cond_b

    if-eq p2, v1, :cond_a

    goto :goto_5

    :cond_a
    const p2, 0x7f140c56

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    const p2, 0x7f140c4f

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-ne p1, v6, :cond_c

    invoke-static {v4, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    invoke-static {v4, v0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->hideSoftInput()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-eqz p1, :cond_d

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    packed-switch v0, :pswitch_data_0

    move v0, v5

    goto :goto_0

    :pswitch_0
    move v0, v4

    goto :goto_0

    :pswitch_1
    move v0, v3

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    move v0, v1

    :goto_0
    const v6, 0x7f1409b6

    const v7, 0x7f140785

    const-string v8, "BTPairingDialogFragment"

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    const-string p1, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConfirmationDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v9

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v9

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v0, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto/16 :goto_5

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    iget-object v0, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConfirmationDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v9

    goto/16 :goto_5

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "createUserEntryDialog: isBondedInitiatedLocally = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v0, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", settingIsForegroundActivity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v0, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", getBlockState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v0, v0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    invoke-static {p1, v0, v8}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0090

    invoke-virtual {v0, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a095e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0b5f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v7, 0x7f0a022b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingViewErrorText:Landroid/widget/TextView;

    const v7, 0x7f0a0b60

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Space;

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingViewMargin:Landroid/widget/Space;

    const v7, 0x7f0a01f9

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget v4, v4, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v8, 0x7

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_5

    if-eq v4, v8, :cond_6

    move v9, v5

    goto :goto_1

    :cond_5
    const v9, 0x7f140715

    goto :goto_1

    :cond_6
    const v9, 0x7f140718

    :goto_1
    if-eqz v4, :cond_8

    if-eq v4, v2, :cond_7

    if-eq v4, v8, :cond_8

    move v4, v1

    goto :goto_2

    :cond_7
    const/4 v4, 0x6

    goto :goto_2

    :cond_8
    const/16 v4, 0x11

    :goto_2
    const/16 v8, 0x8

    if-eq v9, v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "\u200e"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-object v11, v11, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v9, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v5, v3, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    if-nez v5, :cond_a

    iget-boolean v5, v3, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez v5, :cond_a

    iget v3, v3, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    if-ne v3, v2, :cond_a

    const v3, 0x7f140776

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const v5, 0x7f140717

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const-string v5, "inputType=PredictionOff"

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    new-array v5, v2, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f14220c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    iget-boolean v0, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez v0, :cond_b

    iget p1, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBlockState:I

    if-ne p1, v2, :cond_b

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f14220b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v9

    new-instance p1, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v9, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_c
    :goto_5
    iput-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call setPairingDialogActivity() before showing dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call setPairingController() before showing dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "onKey :: keyCode = "

    const-string v0, ", event = "

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->describeContents()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BTPairingDialogFragment"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    const/4 p3, 0x0

    if-ne p2, p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.MAIN"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x13a00000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz p1, :cond_1

    iget-boolean p2, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsBondedInitiatedLocally:Z

    if-nez p2, :cond_0

    iget-boolean p2, p1, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsSettingsForeground:Z

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateBlockingDevice(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    :cond_2
    return p3
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_1
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v2, 0x3

    invoke-interface {v0, v2, p0, v1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p4, 0x11

    if-lt p1, p4, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mTempUserInput:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, p4, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mTempUserInput:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mTempUserInput:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f060568

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingViewErrorText:Landroid/widget/TextView;

    const p4, 0x7f1436c3

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingViewErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingViewMargin:Landroid/widget/Space;

    invoke-virtual {p0, p2}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f060110

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingViewErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingViewMargin:Landroid/widget/Space;

    invoke-virtual {p0, p3}, Landroid/widget/Space;->setVisibility(I)V

    :goto_0
    return-void
.end method

.class public final Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    const/16 p1, 0x3e

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    iget-object p4, p4, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameErrorText:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    iget-object p5, p4, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p6, 0x7f060568

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p5, p4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    iget-object p4, p4, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameErrorText:Landroid/widget/TextView;

    const p5, 0x7f1436c3

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(I)V

    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    iget-object p4, p4, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameErrorText:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mRenameBottomMargin:Landroid/widget/Space;

    invoke-virtual {p0, p2}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    iget-object p4, p4, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mRenameBottomMargin:Landroid/widget/Space;

    invoke-virtual {p4, p3}, Landroid/widget/Space;->setVisibility(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    iget-object p3, p3, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameErrorText:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f0605b8

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-object p1
.end method

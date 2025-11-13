.class public final Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;
.super Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public isSmepFilter:Z

.field public mDeviceNameEditText:Landroid/widget/EditText;

.field public mDeviceNameErrorText:Landroid/widget/TextView;

.field public mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field public mRenameBottomMargin:Landroid/widget/Space;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xf8

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->isSmepFilter:Z

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->isSmepFilter:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameEditText:Landroid/widget/EditText;

    iget-object p5, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p6, 0x7f060568

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    const p5, 0x7f1436c3

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(I)V

    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mRenameBottomMargin:Landroid/widget/Space;

    invoke-virtual {p0, p2}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mRenameBottomMargin:Landroid/widget/Space;

    invoke-virtual {p4, p3}, Landroid/widget/Space;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f0605b8

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-object p1
.end method

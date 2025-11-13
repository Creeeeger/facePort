.class public Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;
.super Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;
.source "BluetoothLengthDeviceNameFilter.java"


# instance fields
.field private mDeviceNameEditText:Landroid/widget/EditText;

.field private mDeviceNameErrorText:Landroid/widget/TextView;

.field private mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field private mRenameBottomMargin:Landroid/widget/Space;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xf8

    .line 44
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/Space;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p5}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    .line 51
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameEditText:Landroid/widget/EditText;

    .line 52
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    .line 53
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 54
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mRenameBottomMargin:Landroid/widget/Space;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 59
    invoke-super/range {p0 .. p6}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 62
    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result p4

    if-eqz p4, :cond_1

    .line 63
    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameEditText:Landroid/widget/EditText;

    iget-object p5, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/android/settings/R$color;->sec_bluetooth_dialog_error_color:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 64
    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    sget p5, Lcom/android/settings/R$string;->wifi_ssid_max_byte_error:I

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mRenameBottomMargin:Landroid/widget/Space;

    invoke-virtual {p0, p2}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mRenameBottomMargin:Landroid/widget/Space;

    invoke-virtual {p4, p3}, Landroid/widget/Space;->setVisibility(I)V

    .line 74
    iget-object p3, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameErrorText:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mDeviceNameEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/settings/R$color;->sec_dashboard_tab_selected_text_color:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.class Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "SecBluetoothNameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceRenameLengthFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;I)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    .line 308
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 313
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 316
    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-static {p4}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->-$$Nest$fgetmDeviceNameErrorText(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result p4

    if-eqz p4, :cond_1

    .line 317
    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-static {p4}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->-$$Nest$fgetmDeviceNameEditText(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/EditText;

    move-result-object p4

    iget-object p5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/android/settings/R$color;->sec_bluetooth_dialog_error_color:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 318
    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-static {p4}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->-$$Nest$fgetmDeviceNameErrorText(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/TextView;

    move-result-object p4

    sget p5, Lcom/android/settings/R$string;->wifi_ssid_max_byte_error:I

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(I)V

    .line 319
    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-static {p4}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->-$$Nest$fgetmDeviceNameErrorText(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->-$$Nest$fgetmRenameBottomMargin(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/Space;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object p4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-static {p4}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->-$$Nest$fgetmRenameBottomMargin(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/Space;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/widget/Space;->setVisibility(I)V

    .line 328
    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-static {p3}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->-$$Nest$fgetmDeviceNameErrorText(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->-$$Nest$fgetmDeviceNameEditText(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/EditText;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$DeviceRenameLengthFilter;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/settings/R$color;->sec_dashboard_tab_selected_text_color:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-object p1
.end method

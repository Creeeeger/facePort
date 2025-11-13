.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;
.super Ljava/lang/Object;
.source "WifiApFamilySharingSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 583
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 584
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 585
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 589
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameDialog(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/app/AlertDialog;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    .line 590
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 575
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x20

    if-gt p2, p3, :cond_0

    .line 576
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fputmTempDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 542
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x20

    if-le p2, p3, :cond_4

    .line 543
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmTempDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmTempDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    if-gt p2, p3, :cond_3

    .line 544
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmTempDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    .line 545
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    move p2, p4

    move v0, p2

    move v1, v0

    :goto_0
    if-gt p2, p3, :cond_0

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v2, v0, v1

    .line 551
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr p2, v0

    move v0, v2

    goto :goto_0

    .line 554
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p2

    sub-int/2addr v0, v1

    invoke-virtual {p1, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 556
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 559
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmTempDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 562
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmErrorTextOnDialogView(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->wifi_ssid_max_byte_error:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 565
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 566
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmErrorTextOnDialogView(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    .line 568
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-ge p1, p3, :cond_5

    .line 569
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmErrorTextOnDialogView(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->sec_wifi_ap_edit_text_background_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    :goto_2
    return-void
.end method

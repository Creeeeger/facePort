.class Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;
.super Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher;
.source "WifiConnectPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 1

    .line 2455
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$EditTextWatcher-IA;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 2501
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$menableSubmitIfAppropriate(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2496
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x20

    if-gt p2, p3, :cond_0

    .line 2497
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmTempSsid(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 2457
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2458
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x20

    if-le p2, p3, :cond_6

    .line 2459
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p2

    const-string p4, "inputType=PredictionOff;disableEmoticonInput=true;disableGifKeyboard=true;disableSticker=true;disableLiveMessage=true;defaultInputmode=english"

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2460
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    if-gt p2, p3, :cond_5

    .line 2461
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p4}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    sub-int/2addr p2, p4

    const/4 p4, 0x1

    if-le p2, p4, :cond_4

    .line 2462
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2463
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x0

    if-le p2, p4, :cond_3

    move p2, v0

    move p4, p2

    move v1, p4

    :goto_0
    if-gt p2, p3, :cond_1

    .line 2467
    invoke-virtual {p1, p4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v2, p4, v1

    .line 2468
    invoke-virtual {p1, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    array-length p4, p4

    add-int/2addr p2, p4

    move p4, v2

    goto :goto_0

    :cond_1
    sub-int/2addr p4, v1

    add-int/lit8 p2, p4, -0x1

    .line 2472
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v1, 0x262a

    if-eq p3, v1, :cond_2

    .line 2477
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2474
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2481
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2484
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2487
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2489
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidErrorText(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/TextView;

    move-result-object p0

    sget p3, Lcom/android/settings/R$string;->max_char_reached:I

    invoke-static {p1, p2, p0, p3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mshowErrorTextUnderEditText(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    goto :goto_2

    .line 2491
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSsidErrorText(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mclearErrorTextUnderEditText(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    :goto_2
    return-void
.end method

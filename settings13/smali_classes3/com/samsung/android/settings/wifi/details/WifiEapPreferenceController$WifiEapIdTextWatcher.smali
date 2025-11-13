.class Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;
.super Ljava/lang/Object;
.source "WifiEapPreferenceController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEapIdTextWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mErrorText:Landroid/widget/TextView;

.field private mPreviousString:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 373
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 378
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_0

    const/16 p3, 0xc8

    if-gt p2, p3, :cond_0

    .line 380
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 386
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string v2, "inputType=PredictionOff;disableEmoticonInput=true"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " start: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " before: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " count: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiEAPPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string p2, "inputType=PredictionOff;disableEmoticonInput=true;defaultInputmode=english"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->max_char_reached:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->access$000(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 398
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 400
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->access$100(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->dashboard_tab_selected_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void
.end method

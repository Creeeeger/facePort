.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;
.super Landroid/app/AlertDialog;
.source "WifiApSetDataLimitDialog.java"


# instance fields
.field private dataWatcher:Landroid/text/TextWatcher;

.field private mButtonOk:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDataLimitValue:Ljava/lang/String;

.field private mEtDataLimit:Landroid/widget/EditText;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTvDataLength:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEtDataLimit(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTvDataLength(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuttonValidate(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->buttonValidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->dataWatcher:Landroid/text/TextWatcher;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mDataLimitValue:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private buttonValidate()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public getInputLimitData()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 52
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_ap_set_data_limit_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 54
    sget v1, Lcom/android/settings/R$string;->data_usage_disable_mobile_limit:I

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 55
    sget v1, Lcom/android/settings/R$id;->mobile_data_limit_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    sget v2, Lcom/android/settings/R$string;->wifi_ap_set_mobile_data_limit:I

    invoke-static {v2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    sget v1, Lcom/android/settings/R$id;->mobile_data_limt_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    .line 59
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->dataWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    sget v1, Lcom/android/settings/R$id;->mobile_data_max_length:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x3

    invoke-virtual {p0, v3, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mDataLimitValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    const/4 v0, -0x2

    .line 69
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->data_limit_cancel:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->buttonValidate()V

    return-void
.end method

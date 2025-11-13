.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "WifiApClientSetDataLimitDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataLimitEditErrorTextView:Landroid/widget/TextView;

.field private mDataLimitEditText:Landroid/widget/EditText;

.field private mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

.field private mDialogMessage:Ljava/lang/String;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOkButton:Landroid/widget/Button;

.field private mSetNoLimitButton:Landroid/widget/Button;

.field private mWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLimitEditErrorTextView(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLimitEditText(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuttonValidate(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->buttonValidate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    .line 37
    sget p1, Lcom/android/settings/R$string;->data_usage_disable_mobile_limit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 38
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->wifi_ap_when_data_limit_you_set_reached_description:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDialogMessage:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mContext:Landroid/content/Context;

    .line 44
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 45
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    .line 46
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDialogMessage:Ljava/lang/String;

    return-void
.end method

.method private buttonValidate()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mOkButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mOkButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getDataLimitEditTextValue()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 5

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->getDataLimitEditTextValue()Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 52
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_ap_set_data_limit_dialog1:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 54
    sget v1, Lcom/android/settings/R$id;->data_limit_message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    sget v1, Lcom/android/settings/R$id;->data_limit_edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditText:Landroid/widget/EditText;

    .line 57
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    sget v1, Lcom/android/settings/R$id;->data_limit_edit_error_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x3

    invoke-virtual {p0, v3, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mWifiApDataUsageConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->data_limit_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v0, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mOkButton:Landroid/widget/Button;

    .line 68
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->mSetNoLimitButton:Landroid/widget/Button;

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->buttonValidate()V

    return-void
.end method

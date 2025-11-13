.class public Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;
.super Ljava/lang/Object;
.source "WifiDetailWarning.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mContext:Landroid/content/Context;

    .line 25
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->setTitle(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 26
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->setMessage(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private setMessage(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    .line 43
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_open_warning:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_wep_warning:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->hasDefaultNetworkName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_default_ssid_warning:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mMessage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mMessage:Ljava/lang/String;

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Message mismatch "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDetailWarning"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setTitle(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_open_warning_summary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_wep_warning_summary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->hasDefaultNetworkName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_default_ssid_warning_summary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mTitle:Ljava/lang/String;

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Title mismatch "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDetailWarning"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public showWarningDialog()V
    .locals 3

    .line 56
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailWarning;->mMessage:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->common_ok:I

    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

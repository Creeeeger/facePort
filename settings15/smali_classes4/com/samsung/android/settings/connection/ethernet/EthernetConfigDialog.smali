.class public final Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;
.super Landroid/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final ipTextWatcher:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;

.field public final mConTypeDhcp:Landroid/widget/RadioButton;

.field public final mConTypeManual:Landroid/widget/RadioButton;

.field public final mContext:Landroid/content/Context;

.field public final mDevList:Landroid/widget/Spinner;

.field public final mDns:Landroid/widget/EditText;

.field public final mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

.field public final mEthManager:Landroid/net/EthernetManager;

.field public mExtendedEthernetManager:Lcom/samsung/android/net/ExtendedEthernetManager;

.field public final mGw:Landroid/widget/EditText;

.field public mHttpProxy:Landroid/net/ProxyInfo;

.field public final mIpaddr:Landroid/widget/EditText;

.field public final mMask:Landroid/widget/EditText;

.field public final mOuterLayout:Landroid/widget/LinearLayout;

.field public mProxyExclusionListView:Landroid/widget/TextView;

.field public mProxyHostView:Landroid/widget/TextView;

.field public mProxyPacView:Landroid/widget/TextView;

.field public mProxyPortView:Landroid/widget/TextView;

.field public mProxyProperties:Landroid/net/ProxyInfo;

.field public final mProxySettingLayout:Landroid/widget/LinearLayout;

.field public mProxySettings:I

.field public final mProxySettingsSpinner:Landroid/widget/Spinner;

.field public final mView:Landroid/view/View;

.field public final staticInputView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/connection/ethernet/EthernetLayer$1;

    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const-string p2, "ethernet"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/EthernetManager;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d08a5

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a05c4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a05e3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a05e4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const v1, 0x7f06074c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0508

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0bf7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0bf6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a092e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a081a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0a3e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a05e5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a05e6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v0, 0x7f0a0b00

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mOuterLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const-string p2, "EtherenetSettings"

    const-string v1, "buildDialogContent mConTypeDhcp true"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setTextDirection(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setTextDirection(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setTextDirection(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setGravity(I)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    new-instance v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$1;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;I)V

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    new-instance v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$1;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;I)V

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    const p2, 0x7f1417e3

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x7f1417a9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, -0x2

    invoke-virtual {p0, p2, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static validateIpConfigField(Landroid/widget/EditText;)I
    .locals 2

    const-string/jumbo v0, "validateIpConfigField"

    const-string v1, "EtherenetSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public final enableSaveIfAppropriate()V
    .locals 10

    const-string v0, "EtherenetSettings"

    const-string v1, "enableSaveIfAppropriate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "save button is not set"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "result "

    const-string v3, "ipAndProxyFieldsAreValid"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    const-string/jumbo v3, "validateIpConfigFields"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "mIpaddr is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "mDns is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "mGw is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "mMask is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    move v5, v4

    goto/16 :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v5}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettings:I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v3}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettings:I

    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " host, portStr, exclusionList"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3, v6, v7}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v8, v4

    :catch_1
    const v6, 0x7f141dd4

    :goto_1
    if-nez v6, :cond_4

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v8, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_6
    const/4 v2, 0x2

    if-ne v3, v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettings:I

    iget-object v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " uriSequence"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move v6, v4

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    if-eqz p0, :cond_a

    const-string p0, "Ethernet state is enabled so disabling save button"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move v4, v5

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_e

    const/4 v2, -0x1

    const-string v4, "EtherenetSettings"

    if-eq v1, v2, :cond_0

    const-string v0, "Unknown button"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_0
    const-string v1, "handle_saveconf"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mExtendedEthernetManager:Lcom/samsung/android/net/ExtendedEthernetManager;

    const-string v2, "eth0"

    invoke-virtual {v1, v2}, Lcom/samsung/android/net/ExtendedEthernetManager;->getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "newConf == null"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "newConf : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_9

    :cond_2
    new-instance v5, Landroid/net/StaticIpConfiguration;

    invoke-direct {v5}, Landroid/net/StaticIpConfiguration;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Config device for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    const-string/jumbo v6, "mode dhcp"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1, v8}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->clear()V

    new-instance v5, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v5}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    invoke-virtual {v5, v7}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    invoke-virtual {v5, v6}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    goto/16 :goto_7

    :cond_3
    const-string/jumbo v6, "mode manual"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v6}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    new-instance v8, Landroid/net/LinkAddress;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "invertNetMask from:"

    invoke-static {v11, v10, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v10}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    check-cast v10, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v10, v7

    :goto_0
    if-eqz v10, :cond_6

    sget-object v12, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v12, v10}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    array-length v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v13, v12, :cond_9

    aget-byte v16, v10, v13

    const/16 v17, 0x80

    const/4 v11, 0x0

    :goto_2
    const/16 v7, 0x8

    if-ge v11, v7, :cond_8

    and-int v7, v16, v17

    if-nez v7, :cond_5

    move v15, v3

    goto :goto_4

    :cond_5
    if-eqz v15, :cond_7

    const-string v7, "invertNetMask invalid mask"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    const/4 v11, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v14, v14, 0x1

    :goto_4
    ushr-int/lit8 v17, v17, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_9
    const-string v7, "invertNetMask cidr : "

    invoke-static {v14, v7, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v11, v14

    :goto_5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    iget-object v7, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    iget-object v7, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_1
    invoke-static {v7}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    check-cast v7, Ljava/net/Inet4Address;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    invoke-virtual {v6}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1, v5}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    :goto_7
    iget v5, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettings:I

    if-nez v5, :cond_a

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_8

    :cond_a
    if-ne v5, v3, :cond_b

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_8

    :cond_b
    const/4 v3, 0x3

    if-ne v5, v3, :cond_c

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_8

    :cond_c
    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    :goto_8
    invoke-virtual {v1, v3}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    iget-object v3, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v3}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "UPDATE_REQUEST newConf : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "mProxySettings : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettings:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mHttpProxy :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/net/EthernetNetworkUpdateRequest$Builder;

    invoke-direct {v3}, Landroid/net/EthernetNetworkUpdateRequest$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/net/EthernetNetworkUpdateRequest$Builder;->setIpConfiguration(Landroid/net/IpConfiguration;)Landroid/net/EthernetNetworkUpdateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/EthernetNetworkUpdateRequest$Builder;->build()Landroid/net/EthernetNetworkUpdateRequest;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/net/EthernetManager;->updateConfiguration(Ljava/lang/String;Landroid/net/EthernetNetworkUpdateRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    goto :goto_a

    :cond_d
    :goto_9
    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setCheckBox(I)V

    goto :goto_a

    :cond_e
    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setCheckBox(I)V

    :goto_a
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "onItemSelected "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "EtherenetSettings"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->showProxyFields()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    :cond_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setCheckBox(I)V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 14

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x1

    const-string/jumbo v3, "onStart to initialize/re-set"

    const-string v4, "EtherenetSettings"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    const-class v5, Lcom/samsung/android/net/ExtendedEthernetManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/net/ExtendedEthernetManager;

    iput-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mExtendedEthernetManager:Lcom/samsung/android/net/ExtendedEthernetManager;

    const-string v5, "eth0"

    invoke-virtual {v3, v5}, Lcom/samsung/android/net/ExtendedEthernetManager;->getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "conf: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v8, v7, [Ljava/lang/String;

    move v9, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v8, v9

    add-int/2addr v9, v2

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "found device: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v8, v6

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1090008

    invoke-direct {v5, v9, v10, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v9, 0x1090009

    invoke-virtual {v5, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v9, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    aget-object v5, v8, v6

    move v9, v6

    :goto_1
    if-ge v9, v7, :cond_3

    aget-object v10, v8, v9

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v5, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v10, v6}, Landroid/widget/Spinner;->setSelection(I)V

    add-int/2addr v9, v2

    goto :goto_1

    :cond_3
    move v9, v6

    :goto_2
    if-eqz v3, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "conf.getIpAssignment() "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    sget-object v7, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "net mask: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    const-string v8, "invertGetNetMask after:"

    const-string v9, "invertGetNetMask:"

    invoke-static {v7, v9, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string v9, ""

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    rsub-int/lit8 v7, v7, 0x20

    const/4 v10, -0x1

    shl-int v7, v10, v7

    ushr-int/lit8 v10, v7, 0x18

    int-to-byte v10, v10

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    shr-int/lit8 v12, v7, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v13, 0x4

    new-array v13, v13, [B

    aput-byte v10, v13, v6

    aput-byte v11, v13, v2

    aput-byte v12, v13, v0

    const/4 v10, 0x3

    aput-byte v7, v13, v10

    :try_start_0
    invoke-static {v13}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v7, "invertGetNetMask exception:"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v4

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v5}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v4

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v5}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->showProxyFields()V

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v3}, Landroid/net/IpConfiguration$IpAssignment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    return-void
.end method

.method public final showProxyFields()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0a0bf4

    const v3, 0x7f0a0bf1

    const/4 v4, 0x0

    const v5, 0x7f0a0bf9

    const-string v6, "EtherenetSettings"

    const/16 v7, 0x8

    if-ne v0, v1, :cond_2

    const-string v0, "PROXY_STATIC"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0bf2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0bf5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0bf0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    const-string v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "PROXY_PAC"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0bf3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v0, "None"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

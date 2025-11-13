.class public Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;
.super Landroid/app/AlertDialog;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;
    }
.end annotation


# static fields
.field public static conf:Landroid/net/IpConfiguration;


# instance fields
.field ipTextWatcher:Landroid/text/TextWatcher;

.field private mConTypeDhcp:Landroid/widget/RadioButton;

.field private mConTypeManual:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mDevList:Landroid/widget/Spinner;

.field private mDevs:Landroid/widget/TextView;

.field private mDns:Landroid/widget/EditText;

.field private mEnablePending:Z

.field private mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

.field private mEthLayer:Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;

.field private mEthManager:Landroid/net/EthernetManager;

.field private mEthernetListener:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;

.field private mGw:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mIpaddr:Landroid/widget/EditText;

.field private mMask:Landroid/widget/EditText;

.field private mOuterLayout:Landroid/widget/LinearLayout;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxyProperties:Landroid/net/ProxyInfo;

.field private mProxySettingLayout:Landroid/widget/LinearLayout;

.field private mProxySettings:I

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;

.field private staticInputView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$E6zMNKGeQX5I9eXLy-HqzSk3qI4(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->lambda$onStart$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConTypeManual(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDns(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGw(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpaddr(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMask(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstaticInputView(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V
    .locals 1

    .line 115
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 444
    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$3;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthLayer:Lcom/samsung/android/settings/connection/ethernet/EthernetLayer;

    .line 119
    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    .line 120
    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    const-string v0, "ethernet"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/EthernetManager;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    .line 121
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->buildDialogContent(Landroid/content/Context;)I

    .line 122
    new-instance p1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthernetListener:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;

    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 576
    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handle_saveconf()V
    .locals 7

    const-string v0, "EtherenetSettings"

    const-string v1, "handle_saveconf"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    if-nez v1, :cond_0

    const-string v1, "conf == null"

    .line 334
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 342
    :cond_1
    new-instance v1, Landroid/net/StaticIpConfiguration;

    invoke-direct {v1}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config device for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string v3, "mode dhcp"

    .line 345
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    sget-object v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v3, v5}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 348
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->clear()V

    .line 349
    new-instance v1, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v1}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 350
    invoke-virtual {v1, v4}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 351
    invoke-virtual {v1, v4}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 352
    invoke-virtual {v1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 353
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 354
    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v1, v0}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    goto :goto_0

    :cond_2
    const-string v3, "mode manual"

    .line 356
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->clear()V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    new-instance v1, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v1}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 360
    new-instance v3, Landroid/net/LinkAddress;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->invertNetMask(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 361
    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 362
    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {v1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 364
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v1, v0}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 366
    sget-object v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 368
    :goto_0
    new-instance v0, Landroid/net/EthernetNetworkUpdateRequest$Builder;

    invoke-direct {v0}, Landroid/net/EthernetNetworkUpdateRequest$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    .line 370
    invoke-virtual {v0, v1}, Landroid/net/EthernetNetworkUpdateRequest$Builder;->setIpConfiguration(Landroid/net/IpConfiguration;)Landroid/net/EthernetNetworkUpdateRequest$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/net/EthernetNetworkUpdateRequest$Builder;->build()Landroid/net/EthernetNetworkUpdateRequest;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    const-string v3, "eth0"

    invoke-virtual {v1, v3, v0, v4, v4}, Landroid/net/EthernetManager;->updateConfiguration(Ljava/lang/String;Landroid/net/EthernetNetworkUpdateRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 374
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEnablePending:Z

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setCheckBox(I)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0, v2}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)V

    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEnablePending:Z

    :cond_3
    return-void

    .line 339
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setCheckBox(I)V

    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 8

    const-string v0, "EtherenetSettings"

    const-string v1, "ipAndProxyFieldsAreValid"

    .line 488
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->validateIpConfigFields()I

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 496
    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v3}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettings:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 499
    iget-object v4, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 500
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettings:I

    .line 501
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    iget-object v4, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 503
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " host, portStr, exclusionList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :try_start_1
    invoke-static {v1, v4, p0}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 510
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v5, v2

    .line 512
    :catch_1
    sget v4, Lcom/android/settings/R$string;->proxy_error_invalid_port:I

    :goto_0
    if-nez v4, :cond_1

    const-string v0, ","

    .line 516
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 515
    invoke-static {v1, v5, p0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 520
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 521
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettings:I

    .line 522
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uriSequence"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 527
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 529
    invoke-static {p0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    :cond_4
    :goto_1
    return v3
.end method

.method private synthetic lambda$onStart$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showProxyFields()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 294
    sget v0, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    sget v0, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    sget v0, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_hostname:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_port:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    .line 301
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_exclusionlist:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 303
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_4

    .line 306
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 312
    sget v0, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    sget v0, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    sget v0, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_pac:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    .line 318
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_4

    .line 321
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 324
    :cond_3
    sget v0, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    sget v0, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    sget v0, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private validateIpConfigField(Landroid/widget/EditText;)I
    .locals 2

    const-string v0, "EtherenetSettings"

    const-string v1, "validateIpConfigField"

    .line 558
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v1, 0x2

    .line 563
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 568
    sget-object p1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {p1, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1

    :catch_0
    const-string p0, "validateIpConfigField : has IllegalArgumentException"

    .line 565
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private validateIpConfigFields()I
    .locals 3

    const-string v0, "EtherenetSettings"

    const-string v1, "validateIpConfigFields"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const-string p0, "mIpaddr is not valid"

    .line 538
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "mDns is not valid"

    .line 542
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "mGw is not valid"

    .line 546
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 549
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "mMask is not valid"

    .line 550
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public buildDialogContent(Landroid/content/Context;)I
    .locals 4

    .line 127
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_eth_configure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    .line 128
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->enterprise_wrapper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->eth_dev_list_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevs:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->eth_dev_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    .line 132
    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_wifi_ap_dialog_spinner_icon_tint_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->dhcp_radio:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingLayout:Landroid/widget/LinearLayout;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 136
    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->manual_radio:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ipaddr_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->netmask_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    .line 142
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->eth_dns_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->eth_gw_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->outerlayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mOuterLayout:Landroid/widget/LinearLayout;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const-string v0, "EtherenetSettings"

    const-string v2, "buildDialogContent mConTypeDhcp true"

    .line 150
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    invoke-static {p1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setTextDirection(I)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setTextDirection(I)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setTextDirection(I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setGravity(I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    new-instance v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$1;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    new-instance v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    const/4 v0, -0x1

    .line 193
    sget v1, Lcom/android/settings/R$string;->menu_save:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    .line 194
    sget v1, Lcom/android/settings/R$string;->menu_cancel:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v2
.end method

.method public enableSaveIfAppropriate()V
    .locals 8

    const-string v0, "EtherenetSettings"

    const-string v1, "enableSaveIfAppropriate"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 464
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "save button is not set"

    .line 466
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->ipAndProxyFieldsAreValid()Z

    move-result v2

    .line 472
    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 473
    invoke-virtual {v3}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object v3

    .line 474
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move v6, v4

    .line 475
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 476
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 477
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    if-eqz p0, :cond_2

    const-string p0, "Ethernet state is enabled so disabling save button"

    .line 478
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 483
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public invertGetNetMask(I)Ljava/lang/String;
    .locals 4

    .line 620
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invertGetNetMask:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EtherenetSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, -0x1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v1, p1

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 628
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invertGetNetMask after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p1, "invertGetNetMask exception:"

    .line 632
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public invertNetMask(Ljava/lang/String;)I
    .locals 10

    const-string v0, "invertNetMask invalid mask"

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invertNetMask from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EtherenetSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 586
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    .line 591
    sget-object p1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {p1, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    .line 594
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 597
    array-length p1, p0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, p1, :cond_4

    aget-byte v6, p0, v3

    const/16 v7, 0x80

    move v8, v1

    :goto_1
    const/16 v9, 0x8

    if-ge v8, v9, :cond_3

    and-int v9, v6, v7

    if-nez v9, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_2

    .line 605
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :goto_2
    ushr-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invertNetMask cidr : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    :goto_3
    return v1

    .line 588
    :catch_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p0, "EtherenetSettings"

    const-string p1, "Unknown button"

    .line 393
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->handle_saveconf()V

    goto :goto_0

    .line 389
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setCheckBox(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 400
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onItemSelected "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "EtherenetSettings"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->showProxyFields()V

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setCheckBox(I)V

    .line 423
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onStart()V
    .locals 7

    const-string v0, "EtherenetSettings"

    const-string v1, "onStart to initialize/re-set"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->ethConfiguration:Landroid/net/IpConfiguration;

    sput-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 216
    new-instance v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V

    iget-object v4, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthernetListener:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;

    invoke-virtual {v1, v3, v4}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 217
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object v1

    .line 218
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    move v5, v2

    .line 222
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 223
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 224
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found device: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->updateDevNameList([Ljava/lang/String;)V

    .line 226
    aget-object v1, v4, v2

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_3

    .line 228
    aget-object v6, v4, v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 233
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v2

    .line 238
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conf: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    if-eqz v1, :cond_8

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conf.getIpAssignment() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v1}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v3, :cond_4

    .line 242
    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v1}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    .line 243
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    sget-object v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    sget-object v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    sget-object v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net mask: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    sget-object v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->invertGetNetMask(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_4
    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v1}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v3}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_5

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 251
    :cond_5
    sget-object v1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v1}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v3}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_6

    .line 252
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 256
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->showProxyFields()V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conf.getIpAssignment() :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->conf:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration$IpAssignment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    goto :goto_4

    .line 267
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    .line 277
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 279
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "EtherenetSettings"

    const-string v1, "onStop"

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mEthernetListener:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$EthernetListener;

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->removeInterfaceStateListener(Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 288
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    return-void
.end method

.method public updateDevNameList([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 430
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 431
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x1090009

    .line 432
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 434
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

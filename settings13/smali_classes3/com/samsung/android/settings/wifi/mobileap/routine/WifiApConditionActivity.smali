.class public Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WifiApConditionActivity.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WifiApConditionActivity"

.field private static supportMultiSIM:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequestParameters:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;


# direct methods
.method public static synthetic $r8$lambda$Cw8nvp-I0TFDioRa7rH9QwG7kmw(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->lambda$onCreate$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fg43JOeS0Qv-mQQjtTwoQDW_dS0(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mVKC4V0Zen6dNbOwVXD-_KW7350(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;Landroid/widget/RadioGroup;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->lambda$onCreate$1(Landroid/widget/RadioGroup;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r9nTjYiSqhfwVTnPCl8lla_klvU(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->lambda$onCreate$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 113
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, ","

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-ltz p2, :cond_0

    .line 116
    array-length p1, p0

    if-ge p2, p1, :cond_0

    aget-object p0, p0, p2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p0

    :goto_1
    return-object p3
.end method

.method private getReadySimCount(Landroid/telephony/TelephonyManager;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    const-string v2, "gsm.sim.state"

    const-string v3, "NOT_READY"

    .line 103
    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "READY"

    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isMultiSimSupported(Landroid/telephony/TelephonyManager;)Z
    .locals 3

    .line 92
    sget p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->supportMultiSIM:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    if-le p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    sput p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->supportMultiSIM:I

    .line 95
    :cond_1
    sget p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->supportMultiSIM:I

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private isSimReady(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "phone"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 77
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->isMultiSimSupported(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->getReadySimCount(Landroid/telephony/TelephonyManager;)I

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->isMultiSimSupported(Landroid/telephony/TelephonyManager;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x5

    if-eq v0, p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/widget/RadioGroup;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 61
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    .line 62
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object p2

    .line 63
    sget p3, Lcom/android/settings/R$id;->on_btn:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "toggle_config_key"

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 64
    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;-><init>()V

    .line 65
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->setParameterValues(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->sendActivityResult(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic lambda$onCreate$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 69
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/content/DialogInterface;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->isSimReady(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->wifi_ap_routines_condition_nosim_warning:I

    .line 40
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;)V

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->wifi_ap_routine_condition_config:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 51
    sget v0, Lcom/android/settings/R$id;->radio_group_config:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->mRequestParameters:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 54
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "toggle_config_key"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    sget v1, Lcom/android/settings/R$id;->on_btn:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/settings/R$id;->off_btn:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->mobileap:I

    .line 58
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->common_done:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;Landroid/widget/RadioGroup;)V

    .line 60
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda2;-><init>()V

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void
.end method

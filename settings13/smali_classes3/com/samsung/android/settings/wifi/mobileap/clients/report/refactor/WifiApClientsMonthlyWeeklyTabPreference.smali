.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;
.super Landroidx/preference/Preference;
.source "WifiApClientsMonthlyWeeklyTabPreference.java"


# static fields
.field private static final PREFERENCE_LAYOUT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTabIndexSelected:I

.field private mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWifiApClientsReportActivity(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTabIndexSelected(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->mTabIndexSelected:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->TAG:Ljava/lang/String;

    .line 17
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_clients_monthly_weekly_tab_layout_preference:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->PREFERENCE_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 22
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->mTabIndexSelected:I

    .line 26
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->mContext:Landroid/content/Context;

    .line 27
    sget p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getTabIndexSelected()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->mTabIndexSelected:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 45
    sget v0, Lcom/android/settings/R$id;->data_monitor_tab_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    .line 47
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method setParent(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->mWifiApClientsReportActivity:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    .line 69
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->TAG:Ljava/lang/String;

    const-string p1, "Stack Chart setParent XYZ"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

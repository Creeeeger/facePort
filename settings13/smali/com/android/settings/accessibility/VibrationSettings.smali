.class public Lcom/android/settings/accessibility/VibrationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "VibrationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static bridge synthetic -$$Nest$smgetVibrationXmlResourceId(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/VibrationSettings;->getVibrationXmlResourceId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/android/settings/accessibility/VibrationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/VibrationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/VibrationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static getVibrationXmlResourceId(Landroid/content/Context;)I
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$integer;->config_vibration_supported_intensity_levels:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 44
    sget p0, Lcom/android/settings/R$xml;->accessibility_vibration_intensity_settings:I

    goto :goto_0

    .line 45
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->accessibility_vibration_settings:I

    :goto_0
    return p0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 56
    sget p0, Lcom/android/settings/R$string;->help_uri_accessibility_vibration:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "VibrationSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x50c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/VibrationSettings;->getVibrationXmlResourceId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

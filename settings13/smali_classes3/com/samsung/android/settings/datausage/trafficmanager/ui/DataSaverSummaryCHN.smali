.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;
.super Lcom/android/settings/datausage/DataSaverSummary;
.source "DataSaverSummaryCHN.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final KEY_DATA_SAVER_DESC:Ljava/lang/String;

.field private final KEY_DATA_SAVER_SWITCH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN$1;

    sget v1, Lcom/android/settings/R$xml;->sec_data_saver_chn:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverSummary;-><init>()V

    const-string v0, "data_saver_desc_chn"

    .line 25
    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;->KEY_DATA_SAVER_DESC:Ljava/lang/String;

    const-string v0, "data_saver_switch_chn"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;->KEY_DATA_SAVER_SWITCH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public initUI()V
    .locals 4

    .line 43
    sget v0, Lcom/android/settings/R$xml;->sec_data_saver_chn:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "data_saver_switch_chn"

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Landroidx/preference/SecSwitchPreference;

    const-string v0, "data_saver_desc_chn"

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 49
    sget v1, Lcom/android/settings/R$id;->data_saver_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0xf

    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, v2, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 52
    sget p0, Lcom/android/settings/R$id;->data_saver_description_title:I

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/android/settings/R$string;->sec_data_saver_description_chn:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.class public Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MouseAndTrackpadSettings.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    .line 64
    new-instance v0, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings$2;

    sget v1, Lcom/android/settings/R$xml;->sec_mouse_and_trackpad_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings$2;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 30
    sget-object p0, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0xbc034

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 25
    sget p0, Lcom/android/settings/R$xml;->sec_mouse_and_trackpad_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

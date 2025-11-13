.class Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference;
.super Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenTimeoutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtectedSelectorWithWidgetPreference"
.end annotation


# instance fields
.field public final mScreenTimeoutSettings:Lcom/android/settings/display/ScreenTimeoutSettings;

.field public final mTimeoutMs:J


# direct methods
.method public static $r8$lambda$mOYRFa9tXr4tKQ0H9p4EQIHuepY(Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference;->mScreenTimeoutSettings:Lcom/android/settings/display/ScreenTimeoutSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/display/ScreenTimeoutSettings;->mIsUserAuthenticated:Z

    invoke-super {p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->onClick()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/display/ScreenTimeoutSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/settings/display/ScreenTimeoutSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference;->mTimeoutMs:J

    iput-object p3, p0, Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference;->mScreenTimeoutSettings:Lcom/android/settings/display/ScreenTimeoutSettings;

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference;->mScreenTimeoutSettings:Lcom/android/settings/display/ScreenTimeoutSettings;

    iget-boolean v1, v0, Lcom/android/settings/display/ScreenTimeoutSettings;->mIsUserAuthenticated:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference;->mTimeoutMs:J

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenTimeoutSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/ScreenTimeoutSettings$ProtectedSelectorWithWidgetPreference;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->onClick()V

    :goto_0
    return-void
.end method

.class public final Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "pms_settings_refresh_rate_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->-$$Nest$madjustRefreshRateForPowerSavingMode(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->access$000(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method

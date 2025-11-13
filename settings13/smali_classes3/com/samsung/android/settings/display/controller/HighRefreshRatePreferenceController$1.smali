.class Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "HighRefreshRatePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "low_power"

    .line 112
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->-$$Nest$madjustRefreshRateForPowerSavingMode(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;)V

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->access$000(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method

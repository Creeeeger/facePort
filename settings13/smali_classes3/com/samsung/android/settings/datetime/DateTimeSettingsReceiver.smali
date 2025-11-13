.class public Lcom/samsung/android/settings/datetime/DateTimeSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettingsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private saveTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p0, "Settings: Set time zone"

    .line 36
    invoke-static {p2, p0}, Landroid/app/timezonedetector/TimeZoneDetector;->createManualTimeZoneSuggestion(Ljava/lang/String;Ljava/lang/String;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object p0

    .line 37
    const-class p2, Landroid/app/timezonedetector/TimeZoneDetector;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/timezonedetector/TimeZoneDetector;

    .line 38
    invoke-interface {p1, p0}, Landroid/app/timezonedetector/TimeZoneDetector;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 21
    invoke-static {}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->isRestoreAutomaticDateTimeAfterReboot()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_time"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_time_zone"

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 25
    :cond_0
    sget-boolean p2, Lcom/samsung/android/settings/Rune;->FEATURE_REMOVE_TZ_WESTERN_SAHARA_IN_MOROCCO:Z

    if-eqz p2, :cond_1

    .line 26
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object p2

    invoke-virtual {p2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Africa/El_Aaiun"

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Africa/Casablanca"

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/datetime/DateTimeSettingsReceiver;->saveTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

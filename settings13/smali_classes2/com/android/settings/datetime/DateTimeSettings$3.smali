.class Lcom/android/settings/datetime/DateTimeSettings$3;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final PATH_TIMEZONE_UPDATE:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    const-string v0, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    .line 305
    iput-object v0, p0, Lcom/android/settings/datetime/DateTimeSettings$3;->PATH_TIMEZONE_UPDATE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadCscSettings(Landroid/content/Context;Lcom/samsung/android/settings/csc/CscParser;)V
    .locals 3

    const-string p0, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    .line 315
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateTimeSettings"

    if-eqz v0, :cond_1

    .line 316
    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "auto_time_zone"

    const-string v2, "auto_time"

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 320
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->applyDateAndTimeForChinaAndWifi(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, p2

    .line 319
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "off"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string p0, "Timezone Update is not found"

    .line 326
    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public resetSettings(Landroid/content/Context;)V
    .locals 2

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time_zone"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "auto_time"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

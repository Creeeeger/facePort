.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$8;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "DeviceNameEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 2

    .line 330
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DeviceInfoHeaderDeviceName"

    const-string v0, "set default device name : Retail mode Demo Reset"

    .line 331
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 333
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    .line 334
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

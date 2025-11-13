.class public Lcom/samsung/android/settings/nfc/NfcReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcReceiver.java"


# static fields
.field static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcReceiver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p0, "NfcReceiver"

    const-string p2, "NfcReceiver - START"

    .line 26
    invoke-static {p0, p2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.hardware.nfc"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "com.android.settings"

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isFactoryBinary()Z

    move-result p2

    if-nez p2, :cond_0

    .line 29
    new-instance p2, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.settings.nfc.NfcReceiver"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 30
    invoke-static {p1}, Lcom/android/settings/Utils;->disableNfcComponent(Landroid/content/Context;)V

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v1, "com.samsung.android.nfc.gpfelica"

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    .line 35
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    .line 37
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    const-string v2, "com.android.settings.Settings$PaymentDCMSettingsActivity"

    const-string v3, "com.android.settings.Settings$NfcOsaifukeitaiSettingsActivity"

    if-nez v1, :cond_1

    .line 38
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 39
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 44
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 46
    :cond_2
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 49
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isNfcOtherCategorySupported()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 50
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_1

    .line 52
    :cond_3
    new-instance p2, Landroid/content/ComponentName;

    const-string v1, "com.android.settings.Settings$PaymentSettingsActivity"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_1
    const-string p1, "NfcReceiver - END"

    .line 56
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public final synthetic Lcom/samsung/android/settings/nfc/NfcReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    sget v0, Lcom/samsung/android/settings/nfc/NfcReceiver;->$r8$clinit:I

    const-string v0, "NfcReceiver"

    const-string v1, "NfcReceiver - START"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.nfc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "com.android.settings.Settings$PaymentSettingsActivity"

    const-string v3, "com.android.settings"

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v4, "Unknown"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "factory"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.settings.nfc.NfcReceiver"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    const-string v1, "Settings"

    const-string v4, "Removing nfc components from Manifest file"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.settings.Settings$OtherSettingsActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.settings.Settings$AndroidBeamSettingsActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.settings.Settings$NfcAdvancedRoutingSettingActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.settings.nfc.PaymentDefaultDialog"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.settings.nfc.NfcForegroundDialog"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    const-string v4, "com.android.settings.Settings$NfcOsaifukeitaiSettingsActivity"

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.Settings$PaymentDCMSettingsActivity"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->disableComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_0
    const-string p0, "NfcReceiver - END"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public final Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->RING_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->mSepIndexDbName:Ljava/lang/String;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "SecVibPickerIntensitySettings"

    const-string/jumbo p1, "register observer"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings$SepIndexObserver;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;

    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->RING_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibPickerIntensitySettings;->setEffect()V

    return-void
.end method

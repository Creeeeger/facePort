.class Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PersonalVibrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibSettingsObserver"
.end annotation


# instance fields
.field resolver:Landroid/content/ContentResolver;

.field soundDBName:[Ljava/lang/String;

.field syncDBName:[Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)V
    .locals 5

    .line 594
    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    .line 595
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 580
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "ringtone"

    const-string v2, "ringtone_2"

    const-string v3, "notification_sound"

    const-string v4, "notification_sound_2"

    .line 581
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->soundDBName:[Ljava/lang/String;

    const-string v1, "sync_vibration_with_ringtone"

    const-string v2, "sync_vibration_with_ringtone_2"

    const-string v3, "sync_vibration_with_notification"

    .line 587
    filled-new-array {v1, v2, v3, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->syncDBName:[Ljava/lang/String;

    .line 597
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_DEFAULT_CATEGORIZE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "device_provisioned"

    .line 598
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$fputmDeviceProvisioned(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;I)V

    .line 599
    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 600
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 599
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 603
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_1

    move v0, v2

    .line 604
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->soundDBName:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 605
    invoke-static {p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$fgetmSoundDB(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->soundDBName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 606
    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->soundDBName:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 607
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 606
    invoke-virtual {v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 614
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 616
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_DEFAULT_CATEGORIZE:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 617
    iget-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 618
    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    invoke-static {v1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$fgetmDeviceProvisioned(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    invoke-static {v1, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$fputmDeviceProvisioned(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;I)V

    .line 620
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 621
    new-instance v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver$1;-><init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 630
    :cond_0
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz p1, :cond_3

    move p1, v0

    .line 631
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->soundDBName:[Ljava/lang/String;

    array-length v2, v1

    if-ge p1, v2, :cond_3

    .line 632
    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->resolver:Landroid/content/ContentResolver;

    aget-object v1, v1, p1

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->syncDBName:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 635
    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    invoke-static {v2}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$fgetmSoundDB(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "PersonalVibrationProvider"

    const-string v3, "ringtone or notification sound has changed"

    .line 636
    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    invoke-static {v3}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$fgetmSoundDB(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)[Ljava/lang/String;

    move-result-object v3

    aput-object v1, v3, p1

    .line 638
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 639
    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    invoke-virtual {v3}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    .line 642
    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->syncDBName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->syncDBName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " set off because "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->soundDBName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hasn`t Haptic Channel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

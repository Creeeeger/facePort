.class final Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VibrateWhenRingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->this$0:Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;

    .line 138
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "vibrate_when_ringing"

    .line 133
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 139
    iput-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 153
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 154
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->this$0:Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->this$0:Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->access$000(Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

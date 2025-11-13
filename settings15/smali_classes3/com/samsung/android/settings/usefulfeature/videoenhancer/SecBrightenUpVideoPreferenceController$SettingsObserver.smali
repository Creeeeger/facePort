.class public final Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final BRIGHTEN_UP_VIDEO:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "hdr_effect"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController$SettingsObserver;->BRIGHTEN_UP_VIDEO:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;)Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;)Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;->access$000(Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController$SettingsObserver;->BRIGHTEN_UP_VIDEO:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;->access$100(Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecBrightenUpVideoPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

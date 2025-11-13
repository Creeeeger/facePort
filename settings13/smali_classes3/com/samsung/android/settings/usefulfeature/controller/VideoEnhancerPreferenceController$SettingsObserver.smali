.class final Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VideoEnhancerPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final BRIGHTEN_UP_VIDEO:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;

    .line 152
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "hdr_effect"

    .line 149
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->BRIGHTEN_UP_VIDEO:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;)Landroidx/preference/SecPreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->access$000(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "hdr_effect"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;)Landroidx/preference/SecPreference;

    move-result-object p0

    if-eqz v0, :cond_1

    sget p1, Lcom/android/settings/R$string;->hdr_setting_bright:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settings/R$string;->hdr_setting_normal:I

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->access$100(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->BRIGHTEN_UP_VIDEO:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->access$200(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.class final Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SecDarkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NIGHT_THEME_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    .line 223
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "display_night_theme"

    .line 220
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$000(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;->access$100(Lcom/samsung/android/settings/display/controller/SecDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

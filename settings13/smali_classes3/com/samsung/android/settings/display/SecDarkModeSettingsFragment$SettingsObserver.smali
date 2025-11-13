.class final Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SecDarkModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

.field private final NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

.field private final NIGHT_THEME_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    .line 561
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "display_night_theme"

    .line 553
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const-string p1, "display_night_theme_scheduled"

    .line 555
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    const-string p1, "display_night_theme_scheduled_type"

    .line 557
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 566
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 567
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$fgetmDarkModeTurnOnAsScheduled(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 568
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->access$500(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "display_night_theme_scheduled"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 570
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$fgetmDarkModeTurnOnAsScheduled(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 572
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$mupdateDarkModeScheduledTypePrefrences(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)V

    goto :goto_0

    .line 573
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 574
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$mupdateDarkModeScheduledTypePrefrences(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->access$600(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 581
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 582
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 583
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->NIGHT_THEME_SCHEDULED_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

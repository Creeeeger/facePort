.class Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$4;
.super Ljava/lang/Object;
.source "SecDarkModeSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->showLocationOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$4;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 510
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$4;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->access$300(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "display_night_theme_scheduled_type"

    const/4 v1, 0x2

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_0

    .line 513
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$4;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$fgetmDarkModeUserSchedule(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    goto :goto_0

    .line 515
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$4;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->access$400(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "display_night_theme_scheduled"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$4;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$fgetmDarkModeTurnOnAsScheduled(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroidx/preference/SecSwitchPreference;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 518
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$4;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$fgetmUiModeManager(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/app/UiModeManager;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 520
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

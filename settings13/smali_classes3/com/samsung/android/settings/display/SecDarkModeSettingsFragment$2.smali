.class Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;
.super Ljava/lang/Object;
.source "SecDarkModeSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 531
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->access$000(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_scheduled_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 537
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$fgetmDarkModeUserSchedule(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->access$100(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$fgetmDarkModeTurnOnAsScheduled(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 542
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$fgetmUiModeManager(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/app/UiModeManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 544
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

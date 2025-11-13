.class Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;
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

    .line 523
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 526
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->access$200(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "location_mode"

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;->this$0:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->-$$Nest$fgetmDarkModeAutoSchedule(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    return-void
.end method

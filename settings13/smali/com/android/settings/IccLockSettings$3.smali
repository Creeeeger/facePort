.class Lcom/android/settings/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->-$$Nest$fgetmPhoneService(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISemTelephony;->getIccUsimPersoEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    .line 525
    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-$$Nest$fgetmPersoToggle(Lcom/android/settings/IccLockSettings;)Landroidx/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->-$$Nest$fgetmPersoDialog(Lcom/android/settings/IccLockSettings;)Landroidx/preference/SecPreference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->-$$Nest$fgetmPersoToggle(Lcom/android/settings/IccLockSettings;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object p0, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p0}, Lcom/android/settings/IccLockSettings;->-$$Nest$fgetmPersoDialog(Lcom/android/settings/IccLockSettings;)Landroidx/preference/SecPreference;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sim_perso_change_summary:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method

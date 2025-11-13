.class Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->showCheckPasswordDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 469
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object p1, p1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/app/AlertDialog;)V

    .line 470
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object p1, p1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmIsCheckedPassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object p1, p1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmUsePassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 472
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmIsCheckedPassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object p1, p1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmIsCheckedMainSwitch(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object p1, p1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 475
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback$1;->this$1:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmIsCheckedMainSwitch(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V

    :cond_1
    :goto_0
    return-void
.end method

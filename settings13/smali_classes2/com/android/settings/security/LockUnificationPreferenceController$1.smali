.class Lcom/android/settings/security/LockUnificationPreferenceController$1;
.super Ljava/lang/Object;
.source "LockUnificationPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$IDialogButtonClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/LockUnificationPreferenceController;->showRemoveBiometricsDialogIfNeeded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/LockUnificationPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/security/LockUnificationPreferenceController;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController$1;->this$0:Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unify()V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController$1;->this$0:Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-static {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->-$$Nest$munifyLocks(Lcom/android/settings/security/LockUnificationPreferenceController;)V

    return-void
.end method

.method public updatePreference()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController$1;->this$0:Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-static {v0}, Lcom/android/settings/security/LockUnificationPreferenceController;->-$$Nest$fgetmHost(Lcom/android/settings/security/LockUnificationPreferenceController;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController$1;->this$0:Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-static {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->-$$Nest$fgetmHost(Lcom/android/settings/security/LockUnificationPreferenceController;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->updateUnificationPreference()V

    :cond_0
    return-void
.end method

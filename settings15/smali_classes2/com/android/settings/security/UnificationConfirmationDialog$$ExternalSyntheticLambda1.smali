.class public final synthetic Lcom/android/settings/security/UnificationConfirmationDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/security/SecuritySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/UnificationConfirmationDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/security/SecuritySettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/UnificationConfirmationDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/security/SecuritySettings;

    const-class p1, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->startUnification()V

    return-void
.end method

.class public final Lcom/android/settings/security/LockUnificationPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/security/LockUnificationPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/security/LockUnificationPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController$1;->this$0:Lcom/android/settings/security/LockUnificationPreferenceController;

    return-void
.end method


# virtual methods
.method public final updatePreference()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController$1;->this$0:Lcom/android/settings/security/LockUnificationPreferenceController;

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    instance-of v0, p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/WorkProfileSecuritySettings;->updateUnificationPreference()V

    :cond_0
    return-void
.end method

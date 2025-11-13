.class public abstract Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mUserHandle:Landroid/os/UserHandle;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserRestriction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string p1, "no_config_credentials"

    iput-object p1, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserRestriction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserRestriction:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.class public final Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAutofillService:Landroid/net/Uri;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mCredentialPrimaryService:Landroid/net/Uri;

.field public final mCredentialService:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "autofill_service"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mAutofillService:Landroid/net/Uri;

    const-string p1, "credential_service"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mCredentialService:Landroid/net/Uri;

    const-string p1, "credential_service_primary"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mCredentialPrimaryService:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->-$$Nest$mupdateFromExternal(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)V

    return-void
.end method

.method public final register()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mAutofillService:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mCredentialService:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mCredentialPrimaryService:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

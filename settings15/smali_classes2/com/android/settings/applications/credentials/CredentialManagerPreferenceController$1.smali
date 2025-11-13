.class public final Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$settingsActivity:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$1;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$1;->val$settingsActivity:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$1;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->-$$Nest$fgetmServiceId(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->-$$Nest$fputmServiceId(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;I)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ST8500"

    const-string v3, "ST8501"

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-static {v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->access$000(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$1;->val$settingsActivity:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v0

    invoke-static {p1, v2, p0, v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->launchSettingsActivityIntent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return v4
.end method

.class public final Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$prefContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$2;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$2;->val$prefContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$2;->val$packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$2;->val$packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$2;->this$0:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->-$$Nest$mhasProviderLimitBeenReached(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$2;->val$prefContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->access$100(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12003e

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return p2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->togglePackageNameEnabled(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->-$$Nest$fgetmPrefs(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->-$$Nest$fgetmPrefs(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->togglePackageNameDisabled(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return p2
.end method

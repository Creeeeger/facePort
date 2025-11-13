.class public final Lcom/android/settings/applications/credentials/PrimaryProviderPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/credentials/PrimaryProviderPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/credentials/PrimaryProviderPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$1;->this$0:Lcom/android/settings/applications/credentials/PrimaryProviderPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$1;->this$0:Lcom/android/settings/applications/credentials/PrimaryProviderPreference;

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mDelegate:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->access$000(Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;->val$settingsActivity:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, p0, v1, p1}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->launchSettingsActivityIntent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

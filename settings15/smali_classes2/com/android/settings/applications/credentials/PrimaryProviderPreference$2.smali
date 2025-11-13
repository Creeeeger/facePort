.class public final Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/applications/credentials/PrimaryProviderPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/credentials/PrimaryProviderPreference;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;->this$0:Lcom/android/settings/applications/credentials/PrimaryProviderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;->this$0:Lcom/android/settings/applications/credentials/PrimaryProviderPreference;

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mDelegate:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->createIntentToOpenPicker()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;->this$0:Lcom/android/settings/applications/credentials/PrimaryProviderPreference;

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mDelegate:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->access$000(Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;->val$settingsActivity:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, p0, v1, p1}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->launchSettingsActivityIntent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;->this$0:Lcom/android/settings/applications/credentials/PrimaryProviderPreference;

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mDelegate:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->createIntentToOpenPicker()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

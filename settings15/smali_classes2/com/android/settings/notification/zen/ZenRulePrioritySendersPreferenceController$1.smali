.class public final Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mHelper:Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->updateChannelCounts()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePrioritySendersPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method

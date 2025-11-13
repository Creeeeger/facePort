.class public final Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListeningToManagedProfileEvents:Z

.field public final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received broadcast: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountPrefController"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot handle received broadcast: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    iget-object v0, p2, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    instance-of v0, v0, Lcom/android/settings/accounts/AccountWorkProfileDashboardFragment;

    if-eqz v0, :cond_2

    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    iget-object p1, p1, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    iput p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p1, 0x0

    const/4 v1, -0x1

    invoke-virtual {p2, v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mIsSecondLayerPage:Z

    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_2
    iget-object p1, p2, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_4

    iget-object v2, p2, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, v2, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi$1()V

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_6

    iget-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object p2, p2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.class public final Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final mClass:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iget-object v1, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    instance-of v2, v1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const v3, 0x7f141510

    invoke-virtual {v2, v3, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iget-object p1, v2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;->mClass:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput v1, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const-class p1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

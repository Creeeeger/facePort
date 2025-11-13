.class public Lcom/android/settings/accounts/AccountTypePreferenceLoader;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;
    }
.end annotation


# instance fields
.field private mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field private mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserHandle(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misSafeIntent(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 75
    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 76
    iput-object p3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 249
    invoke-virtual {v0, p3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p3

    .line 250
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return v1

    .line 254
    :cond_0
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 255
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 259
    :try_start_0
    iget-object p3, p3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, p3, v1, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 261
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    const-string p1, "AccountTypePrefLoader"

    const-string p2, "Intent considered unsafe due to exception."

    .line 263
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private isSamsungAccount(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.osp.app.signin"

    .line 239
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 13

    const-string v0, "Couldn\'t load preferences.xml file from "

    const-string v1, "AccountTypePrefLoader"

    .line 87
    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz p1, :cond_4

    .line 91
    :try_start_1
    iget v2, p1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v2, :cond_4

    .line 98
    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 100
    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 101
    sget v5, Lcom/android/settings/R$style;->Theme_SettingsBase:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 102
    new-instance v5, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v5, v8, v2, v6}, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;-><init>(Ljava/lang/Class;Landroid/content/Context;I)V

    .line 104
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v5, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v5}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v5

    iget v8, p1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    iget-object v9, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 111
    invoke-virtual {v9}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v9

    .line 110
    invoke-virtual {v5, v2, v8, v9}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    move v8, v6

    move v9, v7

    :goto_0
    if-ge v8, v5, :cond_3

    .line 114
    invoke-virtual {v2, v8}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v10

    .line 115
    instance-of v11, v10, Landroidx/preference/PreferenceCategory;

    if-eqz v11, :cond_0

    .line 116
    new-instance v11, Landroidx/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    invoke-virtual {v10}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_0
    instance-of v11, v10, Landroidx/preference/PreferenceScreen;

    if-eqz v11, :cond_1

    .line 120
    new-instance v11, Landroidx/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    invoke-virtual {v10}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v10}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v10}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v10}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_1
    instance-of v11, v10, Landroidx/preference/Preference;

    if-eqz v11, :cond_2

    .line 127
    new-instance v11, Landroidx/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    invoke-virtual {v10}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v10}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v10}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v10}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    move v9, v6

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_3
    if-ne v9, v7, :cond_4

    .line 140
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_2
    if-ge v6, p0, :cond_5

    .line 141
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 142
    invoke-virtual {p2, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-object p2, v3

    :catch_1
    move-object v3, p1

    goto :goto_3

    :catch_2
    move-object p2, v3

    :catch_3
    move-object v3, p1

    goto :goto_4

    :cond_4
    move-object p2, v3

    goto :goto_5

    :catch_4
    move-object p2, v3

    .line 150
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_5
    move-object p2, v3

    .line 148
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    move-object v3, p2

    :cond_6
    return-object v3
.end method

.method public updatePreferenceIntents(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 166
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 167
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2, p3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 170
    :cond_0
    invoke-virtual {v2}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 186
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    new-instance v3, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;

    const-class v4, Lcom/android/settings/location/LocationSettings;

    .line 191
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->location_settings_title:I

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;-><init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Ljava/lang/String;I)V

    .line 190
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    :cond_1
    const/high16 v4, 0x10000

    .line 193
    iget-object v5, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    .line 194
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 193
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_2

    .line 196
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_2
    const-string v4, "account"

    .line 199
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 202
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->isSamsungAccount(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 206
    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    :goto_1
    new-instance v3, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;-><init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

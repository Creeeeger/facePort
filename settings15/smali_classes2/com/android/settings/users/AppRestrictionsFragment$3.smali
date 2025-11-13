.class public final Lcom/android/settings/users/AppRestrictionsFragment$3;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->fetchAndMergeApps()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/users/AppRestrictionsFragment$3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Void;

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    sget v1, Lcom/android/settings/users/AppRestrictionsFragment;->$r8$clinit:I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v4, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v5, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v6, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v6, v5}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserHandle;Landroid/os/UserManager;)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v5, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iget-object v5, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    iget-object v5, v5, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v9, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    new-instance v11, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    const v12, 0x7f0d0509

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v12, v8

    goto :goto_1

    :cond_4
    move v12, v6

    :goto_1
    const/16 v13, 0x64

    if-eqz v10, :cond_5

    iget-object v7, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    const v10, 0x7f08056d

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-static {v7}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget-object v10, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v7

    new-instance v10, Landroid/content/RestrictionEntry;

    sget-object v15, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v7, v15, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    xor-int/2addr v7, v8

    invoke-direct {v10, v15, v7}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    sget-object v7, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    aget v7, v7, v6

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    sget-object v7, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    aget v7, v7, v6

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Landroid/content/RestrictionEntry;->setType(I)V

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/RestrictionEntry;

    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v14, v11, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v7

    invoke-virtual {v11, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v11}, Landroidx/preference/Preference;->setPersistent()V

    invoke-virtual {v11, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v11, v13}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v7, v11}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v7, v9, v8}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    const-wide/32 v14, 0x400040

    :try_start_0
    invoke-interface {v3, v9, v14, v15, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-boolean v15, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v15, :cond_7

    iget-object v15, v14, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v15, :cond_7

    iget-object v15, v14, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v15, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object v15, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v11, v15}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v15, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v11, v15}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v9}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    if-eqz v12, :cond_9

    iget-object v15, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v15, :cond_9

    move v15, v8

    goto :goto_4

    :cond_9
    move v15, v6

    :goto_4
    iput-boolean v15, v11, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    invoke-virtual {v11}, Landroidx/preference/Preference;->setPersistent()V

    invoke-virtual {v11, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v11, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v15, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    const v10, 0x7f1403ad

    if-eqz v15, :cond_b

    iget-boolean v13, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    const v6, 0x7f143129

    if-eqz v13, :cond_a

    iget-object v13, v14, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v13, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v10, v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_a
    iget-object v10, v15, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_b
    iget-object v6, v14, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v6, :cond_c

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_c
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v6, v14, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-eqz v6, :cond_e

    invoke-virtual {v11, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput-boolean v8, v11, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    if-nez v12, :cond_d

    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_d
    iget-object v6, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v6, :cond_f

    const/4 v6, 0x0

    invoke-virtual {v0, v9, v11, v6}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_7

    :cond_e
    iget-boolean v6, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v6, :cond_f

    iget-object v6, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v12, 0x800000

    and-int/2addr v10, v12

    if-eqz v10, :cond_f

    and-int/2addr v6, v8

    if-nez v6, :cond_f

    invoke-virtual {v11, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_f
    :goto_7
    iget-object v6, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->primaryEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v6, :cond_10

    iput-boolean v8, v11, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    iget-object v6, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    iget-object v6, v6, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v11, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_10
    iget-object v6, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    const/16 v7, 0x64

    mul-int/2addr v6, v7

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v6, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    iget-boolean v7, v11, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {v6, v9, v7}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    iget-object v6, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v6, v11}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_6

    :cond_11
    iput-boolean v8, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    iget-boolean v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    iget-object v1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_12
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

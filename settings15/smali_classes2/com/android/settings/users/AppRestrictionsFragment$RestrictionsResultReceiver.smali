.class public final Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final invokeIfCustom:Z

.field public final packageName:Ljava/lang/String;

.field public final preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field public final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iput-boolean p4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->invokeIfCustom:Z

    return-void
.end method


# virtual methods
.method public final assertSafeToStartCustomActivity(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    const-string v2, "223578534"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Application "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not allowed to start activity "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Landroid/content/ActivityNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No result for resolving "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "android.intent.extra.restrictions_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "android.intent.extra.restrictions_intent"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    if-eqz v0, :cond_9

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    sget v2, Lcom/android/settings/users/AppRestrictionsFragment;->$r8$clinit:I

    invoke-virtual {p2, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/RestrictionEntry;

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, p1, :cond_6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eq v5, v7, :cond_2

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v5, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, v8}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroidx/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroidx/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v5, v7}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    :goto_1
    move-object v8, v5

    goto :goto_4

    :cond_2
    new-instance v5, Landroidx/preference/ListPreference;

    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, v8}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    :goto_2
    array-length v11, v9

    if-ge v10, v11, :cond_5

    aget-object v11, v9, v10

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    aget-object v8, v8, v10

    goto :goto_3

    :cond_4
    add-int/2addr v10, p1

    goto :goto_2

    :cond_5
    move-object v8, v7

    :goto_3
    invoke-virtual {v5, v8}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_6
    new-instance v8, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v8, v5}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v5

    invoke-virtual {v8, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_4
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroidx/preference/Preference;->setPersistent()V

    invoke-virtual {v1}, Landroidx/preference/Preference;->getOrder()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v8, v5}, Landroidx/preference/Preference;->setOrder(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {v8, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const v4, 0x7f0802c0

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v4, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, p1

    goto/16 :goto_0

    :cond_7
    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    if-ne v3, p1, :cond_8

    iget-boolean p1, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p1, :cond_8

    iget-object p1, p2, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-boolean p2, p1, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz p2, :cond_a

    iget-object p1, p1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0, p0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_5

    :cond_9
    if-eqz p2, :cond_a

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    const/16 v0, 0xc3

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeFlags(I)V

    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->invokeIfCustom:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->assertSafeToStartCustomActivity(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iget v2, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    iget-object p1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    :catch_0
    move-exception p0

    sget p1, Lcom/android/settings/users/AppRestrictionsFragment;->$r8$clinit:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot start restrictionsIntent "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppRestrictionsFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, ""

    const-string p2, "200688991"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_a
    :goto_5
    return-void
.end method

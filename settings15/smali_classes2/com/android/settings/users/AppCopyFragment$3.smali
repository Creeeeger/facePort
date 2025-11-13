.class public final Lcom/android/settings/users/AppCopyFragment$3;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/users/AppCopyFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/AppCopyFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/users/AppCopyFragment$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/AppCopyFragment$3;->this$0:Lcom/android/settings/users/AppCopyFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/android/settings/users/AppCopyFragment$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment$3;->this$0:Lcom/android/settings/users/AppCopyFragment;

    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment;->mHelper:Lcom/android/settingslib/users/AppCopyHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/users/AppCopyHelper;->addSystemApps(Landroid/content/Intent;Ljava/util/List;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/users/AppCopyHelper;->addSystemApps(Landroid/content/Intent;Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/settingslib/users/AppCopyHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/high16 v1, 0x800000

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_0

    and-int/lit16 v1, v2, 0x80

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/users/AppCopyHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settingslib/users/AppCopyHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;

    iget-object v3, v2, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v2, v2, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    new-instance v0, Lcom/android/settingslib/users/AppCopyHelper$AppLabelComparator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settingslib/users/AppCopyHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/16 v3, 0x2000

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_8

    iget-object v1, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;

    iget-object v2, v1, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v1, v1, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_8
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment$3;->this$0:Lcom/android/settings/users/AppCopyFragment;

    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment;->mHelper:Lcom/android/settingslib/users/AppCopyHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/users/AppCopyHelper;->installSelectedApps()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/users/AppCopyFragment$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/users/AppCopyFragment$3;->this$0:Lcom/android/settings/users/AppCopyFragment;

    iget-object p1, p0, Lcom/android/settings/users/AppCopyFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/users/AppCopyFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserHandle;Landroid/os/UserManager;)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/settings/users/AppCopyFragment;->mHelper:Lcom/android/settingslib/users/AppCopyHelper;

    iget-object p1, p1, Lcom/android/settingslib/users/AppCopyHelper;->mSelectedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p1, p0, Lcom/android/settings/users/AppCopyFragment;->mAppList:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p1, p0, Lcom/android/settings/users/AppCopyFragment;->mHelper:Lcom/android/settingslib/users/AppCopyHelper;

    iget-object p1, p1, Lcom/android/settingslib/users/AppCopyHelper;->mVisibleApps:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;

    iget-object v1, v0, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/settingslib/widget/AppSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, v0, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/android/settingslib/users/AppCopyHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pkg_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/Preference;->setPersistent()V

    new-instance v0, Lcom/android/settings/users/AppCopyFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppCopyFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/AppCopyFragment;)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/users/AppCopyFragment;->mAppList:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/users/AppCopyFragment;->mAppListChanged:Z

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedPackageList:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mInstalledPackageList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedPackageList:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mInstalledPackageList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mSuggestedPackageList:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    new-instance v6, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    sget-object v9, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-static {v5, v7, v8}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v5

    invoke-direct {v6, v5}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    iget-object v5, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v6, v5}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppContext:Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    :try_start_1
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v8, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v8}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/SemMultiWindowManager;->getSupportedModes(Landroid/content/pm/ResolveInfo;)I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_5

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    new-instance v8, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v10, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-static {v6, v5, v9}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v6

    invoke-direct {v8, v6}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v8, v5}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v5

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v5

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/picker/model/AppData$ListSwitchAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v2, v4}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewUtil;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mInstalledPackageList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->isDifferentStringList(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->isDifferentStringList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v2, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    iput-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mInstalledPackageList:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mEnabledPackageList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

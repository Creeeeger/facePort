.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->loadAppList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized loadAppList()Ljava/util/List;
    .locals 12

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object v2, v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mPressType:I

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "function_key_config_doublepress_app_action"

    :goto_0
    invoke-static {v2, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "launcherapps"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object v9, v9, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mBlockList:Ljava/util/ArrayList;

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz v9, :cond_7

    const-string v4, "FunctionKeyAppGridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package is archived : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Landroidx/picker/model/AppData$ListAppDataBuilder;

    invoke-static {v7, v8}, Landroidx/picker/model/AppInfo;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v8

    invoke-direct {v9, v8}, Landroidx/picker/model/AppData$ListAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-virtual {v4, v3}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/picker/model/AppData$ListAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v4

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4, v6}, Landroidx/picker/model/AppInfoData;->setDimmed(Z)V

    :cond_8
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.settings.action.SIDE_KEY_SUPPORTED_APPS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_a

    const-string v4, "FunctionKeyAppGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bundle is null : [package name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const-string v7, ""

    const-string v8, "com.android.settings.title"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_b

    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    invoke-virtual {v8}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "com.android.settings.title"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    :try_start_2
    const-string v8, "FunctionKeyAppGridView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Title is NameNotFoundException : [package name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    const-string v7, "com.android.settings.title"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_7

    :cond_c
    const-string v8, "com.android.settings.icon"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_d

    :try_start_3
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    invoke-virtual {v8}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "com.android.settings.icon"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_1
    :try_start_4
    const-string v4, "FunctionKeyAppGridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Summary is NameNotFoundException : [package name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object v4, v5

    :goto_6
    if-nez v4, :cond_e

    const-string v4, "FunctionKeyAppGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon is miss : [package name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "FunctionKeyAppGridView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SideKey supported packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroidx/picker/model/AppData$ListAppDataBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v4, v3}, Landroidx/picker/model/AppInfo;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v3

    invoke-direct {v8, v3}, Landroidx/picker/model/AppData$ListAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-virtual {v8, v7}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/picker/model/AppData$ListAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v3, v6}, Landroidx/picker/model/AppInfoData;->setDimmed(Z)V

    :cond_f
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_10
    :goto_7
    const-string v4, "FunctionKeyAppGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Title is miss : [package name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_8
    monitor-exit p0

    throw v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->loadAppList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

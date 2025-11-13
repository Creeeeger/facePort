.class public final Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "silent_add_list"

    const-string/jumbo v3, "silent_remove_list"

    const-string v4, "EdgeLightingSettingManager"

    const-string v5, "edge_lighting_settings"

    const-string v6, "pkg_name"

    const/4 v7, 0x0

    if-eqz v1, :cond_a

    const/4 v8, 0x1

    if-eq v1, v8, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2

    const/4 p1, 0x5

    if-eq v1, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-boolean p1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "edge_lighting_show_condition"

    const/4 v2, -0x2

    invoke-static {p1, v1, v8, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.edgelighting.PACKAGE_ADDED"

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->-$$Nest$mregisterBroadcastReceiver(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.edgelighting.PACKAGE_REMOVED"

    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->-$$Nest$mregisterBroadcastReceiver(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.edgelighting.PACKAGE_REPLACED"

    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->-$$Nest$mregisterBroadcastReceiver(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;)V

    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p0

    invoke-static {v0, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    goto/16 :goto_4

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;->startActionUpdate(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    const-string p1, "com.samsung.android.edgelightingeffectunit"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v7, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v7, :cond_e

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "preload/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->replaceSilentInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "EdgeLightingReceiver"

    const-string p1, "PACKAGE_REPLACED error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "removeSilentInstalledPackage : on, packageName = "

    if-eqz v6, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " return own package"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v6, "update_package_name"

    invoke-interface {v5, v6, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v6, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v10, "update_package_enable"

    if-eqz v6, :cond_7

    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_7
    invoke-interface {v5, v10, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v1, " AllApplication = "

    invoke-static {v9, p0, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setDisablePackage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p0

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_8
    const-string v0, "removeSilentInstalledPackage : off, packageName = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {v1, v3, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {v1, v2, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    :cond_9
    :goto_2
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getAppInfoSupportingEdgeLighting(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "addSilentInstalledPackage : on, packageName = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setEnablePackage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p0

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    goto :goto_4

    :cond_c
    const-string p1, "addSilentInstalledPackage : off, packageName = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {p1, v2, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {p1, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {p1, v3, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_4

    :cond_d
    :goto_3
    const-string p1, "addSilentInstalledPackage : no support package "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_4
    return-void
.end method

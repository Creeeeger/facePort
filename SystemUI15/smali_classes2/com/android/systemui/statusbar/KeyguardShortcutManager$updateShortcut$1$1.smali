.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 11

    check-cast p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    const-string/jumbo v1, "updateShortcut : "

    const-string v3, "KeyguardShortcutManager"

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSuspended(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v6, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    const/16 v7, 0x81

    invoke-virtual {v6, v4, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isAppEnabled() Error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", Component: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v7

    const/16 v9, 0x4d

    if-ne v7, v9, :cond_7

    :goto_1
    iget-boolean v1, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-eq v1, v8, :cond_2

    const-string p0, "getComponentEnabled ... !COMPONENT_...STATE_ENABLED."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v4, "com.samsung.keyguard.SHOW_WHEN_LOCKED_SHORTCUT"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v9, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    aget-object v9, v9, v10

    if-eqz v4, :cond_4

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    iput-boolean v0, v9, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->noUnlockNeeded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    aget-object v0, v0, v4

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->noUnlockNeeded:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    const-string v4, "com.samsung.keyguard.LAUNCH_INSECURE_MAIN_SHORTCUT"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->launchInsecureMain:Z

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    aget-object v1, v1, v4

    iput-boolean v8, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$isMonotoneIconRequired(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isMonotoneIcon:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    aget-object v1, v1, v4

    invoke-static {v0, v6, v2, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getShortcutIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/content/pm/ActivityInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    aget-object v1, v1, v4

    invoke-static {v0, v6, v8, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getShortcutIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/content/pm/ActivityInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    aget-object v1, v1, v4

    iput-object p1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    iput-object v5, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    iget-object p1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->appLabel:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    aget-object p1, p1, v0

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isUnlockWaitNeeded:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateShortcut th : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " class : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getQuickAffordanceConfigList()Ljava/util/List;

    move v2, v8

    goto :goto_5

    :cond_7
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " activityInfo is null, resolveInfo is : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",  return FALSE"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    :goto_4
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    const-string p1, " is disabled from settings"

    invoke-static {p0, v1, p1, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return v2
.end method

.class public final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;

.field public final synthetic $this_allowRestrictedSettings:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$this_allowRestrictedSettings:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/Flags;->extendEcmToAllSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$context:Landroid/content/Context;

    const-class v1, Landroid/app/ecm/EnhancedConfirmationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/ecm/EnhancedConfirmationManager;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$this_allowRestrictedSettings:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ecm/EnhancedConfirmationManager;->clearRestriction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$this_allowRestrictedSettings:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x77

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$this_allowRestrictedSettings:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f142f3a

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;->$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

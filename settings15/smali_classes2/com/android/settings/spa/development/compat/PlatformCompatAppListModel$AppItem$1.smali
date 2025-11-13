.class final Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$AppItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$AppItem$1;->this$0:Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel;

    iput-object p2, p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$AppItem$1;->this$0:Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel;

    iget-object p0, p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppRecord;

    iget-object p0, p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppRecord;->app:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, v0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/development/compat/PlatformCompatDashboard;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 v0, 0x27

    iput v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "compat_app"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

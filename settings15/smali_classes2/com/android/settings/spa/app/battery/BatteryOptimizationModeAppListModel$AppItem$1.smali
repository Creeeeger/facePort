.class final Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$1;
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

.field final synthetic this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iput-object p2, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$1;->this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget-object v0, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast v0, Lcom/android/settings/spa/app/AppRecordWithSize;

    iget-object v0, v0, Lcom/android/settings/spa/app/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "extra_package_name"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    const-string v3, "extra_power_usage_percent"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget-object v0, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast v0, Lcom/android/settings/spa/app/AppRecordWithSize;

    iget-object v0, v0, Lcom/android/settings/spa/app/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    const-string v4, "extra_uid"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$1;->this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;

    iget-object v2, v2, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v2, 0x0

    const v4, 0x7f14059f

    invoke-virtual {v1, v4, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$1;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p0, Lcom/android/settings/spa/app/AppRecordWithSize;

    iget-object p0, p0, Lcom/android/settings/spa/app/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    const/16 p0, 0x14

    iput p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

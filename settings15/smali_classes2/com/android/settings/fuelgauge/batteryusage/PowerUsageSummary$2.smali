.class public final Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onLoaderReset$com$android$settings$fuelgauge$batteryusage$PowerUsageSummary$2(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method

.method private final onLoaderReset$com$android$settings$fuelgauge$batteryusage$PowerUsageSummary$3(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0

    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryInfoLoader;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/BatteryInfoLoader;-><init>(Landroid/content/Context;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    check-cast p2, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->updateBatteryTips(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->getCurrentBatteryTip()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->updateHeaderByBatteryTips(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void

    :pswitch_0
    check-cast p2, Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->updateHeaderPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->getCurrentBatteryTip()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->updateHeaderByBatteryTips(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageSummary$2;->$r8$classId:I

    return-void
.end method

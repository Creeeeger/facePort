.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/fuelgauge/batteryusage/BootBroadcastReceiver;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.battery.action.PERIODIC_JOB_RECHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/BootBroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

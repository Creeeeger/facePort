.class public final synthetic Lcom/android/systemui/battery/BatteryMeterViewController$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/battery/BatteryMeterViewController$4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController$4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/battery/BatteryMeterViewController$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/battery/BatteryMeterViewController$4;

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$4;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$1200(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/battery/BatteryMeterViewController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowBatteryPercentInStatusBar()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentSamsungSetting:Z

    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->setShowPercentSetting(Z)V

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$1300(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

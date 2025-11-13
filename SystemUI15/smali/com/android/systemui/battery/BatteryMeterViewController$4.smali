.class Lcom/android/systemui/battery/BatteryMeterViewController$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/battery/BatteryMeterViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$4;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$4;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object p1, p1, Lcom/android/systemui/battery/BatteryMeterViewController;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/battery/BatteryMeterViewController$4$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController$4;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

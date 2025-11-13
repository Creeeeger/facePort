.class public final Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;->this$0:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;->this$0:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;

    iget-object p1, p1, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string/jumbo v0, "sysui_tuner_demo_on"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;->this$0:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;

    iget-boolean p1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->onDemoModeStarted()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->onDemoModeFinished()V

    :goto_0
    return-void
.end method

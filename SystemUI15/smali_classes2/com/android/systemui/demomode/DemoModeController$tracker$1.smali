.class public final Lcom/android/systemui/demomode/DemoModeController$tracker$1;
.super Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/demomode/DemoModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/demomode/DemoModeController;Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/demomode/DemoModeController$tracker$1;->this$0:Lcom/android/systemui/demomode/DemoModeController;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;-><init>(Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;)V

    return-void
.end method


# virtual methods
.method public final onDemoModeAvailabilityChanged()V
    .locals 1

    sget v0, Lcom/android/systemui/demomode/DemoModeController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/demomode/DemoModeController$tracker$1;->this$0:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/demomode/DemoModeController$tracker$1;->this$0:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/demomode/DemoModeController;->exitDemoMode$1()V

    :cond_0
    return-void
.end method

.method public final onDemoModeStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/demomode/DemoModeController$tracker$1;->this$0:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

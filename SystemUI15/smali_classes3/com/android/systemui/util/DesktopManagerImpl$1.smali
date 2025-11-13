.class Lcom/android/systemui/util/DesktopManagerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$1;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinishedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$1;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyScreenState(Z)V

    return-void
.end method

.method public bridge synthetic onPostFinishedWakingUp()V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$1;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/DesktopManagerImpl;->notifyScreenState(Z)V

    return-void
.end method

.method public bridge synthetic onStartedWakingUp()V
    .locals 0

    return-void
.end method

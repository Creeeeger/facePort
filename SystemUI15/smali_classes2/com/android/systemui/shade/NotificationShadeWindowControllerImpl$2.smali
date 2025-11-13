.class Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBeforeUserSwitching(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isSwitchingUsers:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isSwitchingUsers:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :goto_0
    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean p2, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isSwitchingUsers:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isSwitchingUsers:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :goto_0
    return-void
.end method

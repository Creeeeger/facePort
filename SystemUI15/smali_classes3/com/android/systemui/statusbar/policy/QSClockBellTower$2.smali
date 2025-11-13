.class public final Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenTurnedOn()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

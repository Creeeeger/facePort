.class public final Lcom/android/systemui/biometrics/UdfpsController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenTurnedOff()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    return-void
.end method

.method public final onScreenTurnedOn()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.class public final Lcom/android/keyguard/ClockEventController$registerListeners$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$registerListeners$2;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$registerListeners$2;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->zenModeCallback:Lcom/android/keyguard/ClockEventController$zenModeCallback$1;

    iget-object v0, v0, Lcom/android/keyguard/ClockEventController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    invoke-virtual {v1, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1;->onZenChanged(I)V

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$registerListeners$2;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->zenModeCallback:Lcom/android/keyguard/ClockEventController$zenModeCallback$1;

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1;->onNextAlarmChanged()V

    return-void
.end method

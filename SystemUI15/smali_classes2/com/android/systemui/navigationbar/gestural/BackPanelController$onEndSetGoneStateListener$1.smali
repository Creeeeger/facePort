.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetGoneStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetGoneStateListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetGoneStateListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetGoneStateListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    sget-object v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    return-void
.end method

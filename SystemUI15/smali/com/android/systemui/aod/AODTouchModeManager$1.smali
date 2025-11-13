.class public final Lcom/android/systemui/aod/AODTouchModeManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aod/AODTouchModeManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODTouchModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager$1;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartedWakingUp()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/aod/AODTouchModeManager$1;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    iget v0, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentTouchMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "AODTouchModeManager"

    const-string v2, "onStartedWakingUp: set single touch mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/aod/AODTouchModeManager;->setTouchMode(I)V

    :cond_0
    return-void
.end method

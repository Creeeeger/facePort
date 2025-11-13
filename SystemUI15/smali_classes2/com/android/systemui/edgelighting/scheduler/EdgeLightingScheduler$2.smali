.class public final Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

    return-object p0
.end method

.method public final onChange()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->setEnable()V

    return-void
.end method

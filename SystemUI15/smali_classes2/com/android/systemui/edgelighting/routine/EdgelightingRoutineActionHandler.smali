.class public final Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

.field public mEdgeLightingEffect:Ljava/lang/String;

.field public mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

.field public final mHandler:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;

.field public mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;

    new-instance v0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;-><init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;

    return-void
.end method

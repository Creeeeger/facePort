.class public final Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

.field public final mLinkedInfo:Ljava/util/LinkedHashMap;

.field public mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    return-void
.end method

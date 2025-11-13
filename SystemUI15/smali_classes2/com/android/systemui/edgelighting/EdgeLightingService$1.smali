.class public final Lcom/android/systemui/edgelighting/EdgeLightingService$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    :cond_0
    return-void
.end method

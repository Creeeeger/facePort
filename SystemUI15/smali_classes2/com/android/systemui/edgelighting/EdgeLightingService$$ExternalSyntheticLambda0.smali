.class public final synthetic Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;II)V
    .locals 0

    iput p5, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    iput p4, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    iget p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$3:I

    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    sget-boolean v3, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    iget p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$3:I

    sget-boolean v3, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

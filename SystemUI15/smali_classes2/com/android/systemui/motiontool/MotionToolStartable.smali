.class public final Lcom/android/systemui/motiontool/MotionToolStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final ddmHandleMotionTool:Lcom/android/app/motiontool/DdmHandleMotionTool;


# direct methods
.method public constructor <init>(Lcom/android/app/motiontool/DdmHandleMotionTool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/motiontool/MotionToolStartable;->ddmHandleMotionTool:Lcom/android/app/motiontool/DdmHandleMotionTool;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/motiontool/MotionToolStartable;->ddmHandleMotionTool:Lcom/android/app/motiontool/DdmHandleMotionTool;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/app/motiontool/DdmHandleMotionTool;->CHUNK_MOTO:I

    invoke-static {v0, p0}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    return-void
.end method

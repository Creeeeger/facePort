.class public final Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/backup/BRUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initColorTypeIndex(Landroid/content/Context;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    return-void
.end method

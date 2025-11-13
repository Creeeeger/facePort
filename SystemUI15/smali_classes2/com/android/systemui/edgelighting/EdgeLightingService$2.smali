.class public final Lcom/android/systemui/edgelighting/EdgeLightingService$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    return-object p0
.end method

.method public final onChange()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EdgeLightingObserver: !!!! enable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdgeLightingService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->getInstance()Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->updateStatusLoggingItem(Landroid/content/Context;)V

    return-void
.end method

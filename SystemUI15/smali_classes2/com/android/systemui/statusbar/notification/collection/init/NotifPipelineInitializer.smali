.class public final Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

.field public final mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

.field public final mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

.field public mNotificationService:Lcom/android/systemui/statusbar/NotificationListener;

.field public final mPipelineWrapper:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

.field public mShadeViewManager:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

.field public final mShadeViewManagerFactory:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mPipelineWrapper:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mShadeViewManagerFactory:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V

    return-void
.end method

.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 3

    const-string v0, "STAGE 0: SETUP"

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v0, "notifPluggableCoordinators"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "STAGE 1: LISTEN"

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "notificationService"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotificationService:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "STAGE 2: BATCH EVENTS"

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "groupCoalescer"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "STAGE 3: COLLECT"

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "notifCollection"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "STAGE 4: BUILD LIST"

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "listBuilder"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "STAGE 5: DISPATCH RENDER"

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v1, "renderStageManager"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string v0, "STAGE 6: UPDATE SHADE"

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "shadeViewManager"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mShadeViewManager:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

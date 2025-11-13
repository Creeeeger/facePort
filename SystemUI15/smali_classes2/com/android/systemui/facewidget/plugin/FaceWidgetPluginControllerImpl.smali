.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

.field public final mPluginFaceWidgetManager:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetNotificationController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mPluginFaceWidgetManager:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "FaceWidgetPluginController"

    invoke-static {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "FaceWidget state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mPluginFaceWidgetManager:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    App version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SystemUI version = 3030"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

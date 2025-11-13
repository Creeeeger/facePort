.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mClockContainer:Landroid/view/View;

.field public mContentsContainerList:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mFaceWidgetContainer:Landroid/view/View;

.field public mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-eqz p0, :cond_1

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

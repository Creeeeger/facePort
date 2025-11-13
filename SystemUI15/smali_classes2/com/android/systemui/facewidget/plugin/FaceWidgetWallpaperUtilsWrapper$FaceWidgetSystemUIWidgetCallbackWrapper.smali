.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mArea:J

.field public final mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;

    iput-wide p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mArea:J

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "     Callback : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "      flag : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mArea:J

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;

    if-eqz p0, :cond_1

    long-to-int p1, p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "updateStyle: updateFlag = "

    const-string v1, ", colors = "

    invoke-static {v0, p2, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p3, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "FaceWidgetWallpaperUtilsWrapper"

    invoke-static {p2, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;->updateStyle(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

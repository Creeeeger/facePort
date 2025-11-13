.class public final synthetic Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/ScreenMediaRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mListener:Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;

    check-cast p0, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Media recorder info: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/systemui/screenrecord/RecordingService;->onStartCommand(Landroid/content/Intent;II)I

    return-void
.end method

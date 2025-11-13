.class public final synthetic Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/media/MediaRecorder;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRecorder;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaRecorder;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->release()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->stop()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

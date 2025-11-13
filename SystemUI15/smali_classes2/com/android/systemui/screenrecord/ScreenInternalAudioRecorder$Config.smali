.class public final Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bitRate:I

.field public final bufferSizeBytes:I

.field public final channelInMask:I

.field public final channelOutMask:I

.field public final encoding:I

.field public final privileged:Z

.field public final sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->channelOutMask:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->channelInMask:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    const v0, 0xac44

    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    const v0, 0x2fda0

    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->bitRate:I

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->bufferSizeBytes:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->privileged:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channelMask="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->channelOutMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n   encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->bufferSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n privileged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->privileged:Z

    const-string v1, "\n legacy app looback=false"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TTS_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TTS speaking is done!!!"

    const-string v0, "TalkBackUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "TTS stop!!!"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TTS_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Error occured during TTS speaks!!!"

    const-string v0, "TalkBackUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "TTS stop!!!"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    const-string p0, "TalkBackUtils"

    const-string p1, "TTS speaks now!!!"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

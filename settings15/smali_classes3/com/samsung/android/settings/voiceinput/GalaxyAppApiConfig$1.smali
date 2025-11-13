.class Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig$1;->this$0:Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;

    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 2

    const-string p0, "Fail to receive cc"

    const-string v0, "@VoiceIn: GalaxyAppApiConfig"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3ec

    if-ne p1, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "onError : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onResult()V
    .locals 1

    const-string p0, "@VoiceIn: GalaxyAppApiConfig"

    const-string v0, "cc received"

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SERVICE_BIND_ACTION:Ljava/lang/String; = "android.intellivoiceservice.speech.RecognitionService"

.field public static final SERVICE_SYSTEM_BIND_ACTION:Ljava/lang/String; = "android.intellivoiceservice.speech.RecognitionSystemService"

.field public static final SINCE_SPEAKER_DIARISATION:Ljava/lang/Integer;

.field public static final SINCE_SPEECH_RECOGNITION:Ljava/lang/Integer;

.field public static final SYSTEM_PERMISSION_BIND_SERVICE:Ljava/lang/String; = "com.samsung.android.intellivoiceservice.ai.asr.permission.SYSTEM_BIND_SPEECH_RECOGNITION_SERVICE"

.field public static final SYSTEM_PERMISSION_QUERY_CP:Ljava/lang/String; = "com.samsung.android.intellivoiceservice.ai.asr.permission.SYSTEM_SPEECH_RECOGNITION_SERVICE_CONFIG_PROVIDER"

.field public static final SYSTEM_URI_STRING:Ljava/lang/String; = "com.samsung.android.intellivoiceservice.ai.speech2"

.field public static final URI_STRING:Ljava/lang/String; = "com.samsung.android.intellivoiceservice.ai.speech"

.field public static final VERSION:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst;->VERSION:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst;->SINCE_SPEECH_RECOGNITION:Ljava/lang/Integer;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst;->SINCE_SPEAKER_DIARISATION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

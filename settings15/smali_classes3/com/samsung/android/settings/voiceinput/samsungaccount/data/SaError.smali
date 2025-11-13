.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "@VoiceIn: SaError"

.field private static final sErrorType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->sErrorType:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, -0x3f8

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->mType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error code, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@VoiceIn: SaError"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->sErrorType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->mType:I

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->mType:I

    return p0
.end method

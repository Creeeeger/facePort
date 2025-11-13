.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;
.super Ljava/lang/Object;
.source "SaError.java"


# static fields
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

    .line 15
    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->sErrorType:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iput p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->mType:I

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn: SaError"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->sErrorType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_1
    iput p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->mType:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaError;->mType:I

    return p0
.end method

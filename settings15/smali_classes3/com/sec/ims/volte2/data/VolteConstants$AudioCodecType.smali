.class public final enum Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field private static final stringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCodec:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 8

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    sget-object v1, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    sget-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    sget-object v4, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    sget-object v5, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    sget-object v6, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    sget-object v7, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v1, "NONE"

    const-string v2, "AUDIO_CODEC_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v1, 0x1

    const-string v2, "AMR-WB"

    const-string v4, "AUDIO_CODEC_AMRWB"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v1, 0x2

    const-string v2, "AMR-NB"

    const-string v4, "AUDIO_CODEC_AMRNB"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v1, 0x3

    const-string v2, "EVS-NB"

    const-string v4, "AUDIO_CODEC_EVSNB"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v1, 0x4

    const-string v2, "EVS-WB"

    const-string v4, "AUDIO_CODEC_EVSWB"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v1, 0x5

    const-string v2, "EVS-SWB"

    const-string v4, "AUDIO_CODEC_EVSSWB"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v1, 0x6

    const-string v2, "EVS-FB"

    const-string v4, "AUDIO_CODEC_EVSFB"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v1, 0x7

    const-string v2, "EVS"

    const-string v4, "AUDIO_CODEC_EVS"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    invoke-static {}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    invoke-static {}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->mCodec:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    const-class v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object p0
.end method

.method public static values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    invoke-virtual {v0}, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->mCodec:Ljava/lang/String;

    return-object p0
.end method

.class public final enum Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
.super Ljava/lang/Enum;
.source "VolteConstants.java"


# annotations
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
.method static constructor <clinit>()V
    .locals 16

    .line 1432
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v1, "AUDIO_CODEC_NONE"

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v1, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v3, "AUDIO_CODEC_AMRWB"

    const/4 v4, 0x1

    const-string v5, "AMR-WB"

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v5, "AUDIO_CODEC_AMRNB"

    const/4 v6, 0x2

    const-string v7, "AMR-NB"

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v5, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v7, "AUDIO_CODEC_EVSNB"

    const/4 v8, 0x3

    const-string v9, "EVS-NB"

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 1433
    new-instance v7, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v9, "AUDIO_CODEC_EVSWB"

    const/4 v10, 0x4

    const-string v11, "EVS-WB"

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v9, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v11, "AUDIO_CODEC_EVSSWB"

    const/4 v12, 0x5

    const-string v13, "EVS-SWB"

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v11, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v13, "AUDIO_CODEC_EVSFB"

    const/4 v14, 0x6

    const-string v15, "EVS-FB"

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v13, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v15, "AUDIO_CODEC_EVS"

    const/4 v14, 0x7

    const-string v12, "EVS"

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 1431
    sput-object v12, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 1437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    .line 1440
    invoke-static {}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1441
    sget-object v4, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

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

    .line 1445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1446
    iput-object p3, p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->mCodec:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    .line 1431
    const-class v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object p0
.end method

.method public static values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    .line 1431
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    invoke-virtual {v0}, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1454
    iget-object p0, p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->mCodec:Ljava/lang/String;

    return-object p0
.end method

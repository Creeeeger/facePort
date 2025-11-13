.class public final enum Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum ACTIVE_NOISE_CANCELING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum ACTIVE_NOISE_CANCELING_LEVEL:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum ADAPTIVE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum AMBIENT_SOUND:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum AMBIENT_SOUND_LEVEL:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum BOOST_DIALOGUE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum DETAIL:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum DOLBY_ATMOS:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum EQUALIZER:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum LOUDNESS_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum NOISE_CONTROL_OFF:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum SHOW:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum SHOW_COVER:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

.field public static final enum SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/4 v1, 0x0

    const-string v2, "1001"

    const-string v3, "SHOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->SHOW:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/4 v2, 0x1

    const-string v3, "1002"

    const-string v4, "DOLBY_ATMOS"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->DOLBY_ATMOS:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/4 v3, 0x2

    const-string v4, "1003"

    const-string v5, "EQUALIZER"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->EQUALIZER:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/4 v4, 0x3

    const-string v5, "1004"

    const-string v6, "BOOST_DIALOGUE"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->BOOST_DIALOGUE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v4, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/4 v5, 0x4

    const-string v6, "1005"

    const-string v7, "LOUDNESS_NORMALIZATION"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->LOUDNESS_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v5, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/4 v6, 0x5

    const-string v7, "1006"

    const-string v8, "NOISE_CONTROL_OFF"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->NOISE_CONTROL_OFF:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v6, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/4 v7, 0x6

    const-string v8, "1007"

    const-string v9, "AMBIENT_SOUND"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->AMBIENT_SOUND:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v7, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/4 v8, 0x7

    const-string v9, "1008"

    const-string v10, "ADAPTIVE"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->ADAPTIVE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v8, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/16 v9, 0x8

    const-string v10, "1009"

    const-string v11, "ACTIVE_NOISE_CANCELING"

    invoke-direct {v8, v11, v9, v10}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->ACTIVE_NOISE_CANCELING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v9, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/16 v10, 0x9

    const-string v11, "1010"

    const-string v12, "AMBIENT_SOUND_LEVEL"

    invoke-direct {v9, v12, v10, v11}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->AMBIENT_SOUND_LEVEL:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v10, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/16 v11, 0xa

    const-string v12, "1011"

    const-string v13, "ACTIVE_NOISE_CANCELING_LEVEL"

    invoke-direct {v10, v13, v11, v12}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->ACTIVE_NOISE_CANCELING_LEVEL:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v11, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/16 v12, 0xb

    const-string v13, "1012"

    const-string v14, "SPATIAL_AUDIO"

    invoke-direct {v11, v14, v12, v13}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v12, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/16 v13, 0xc

    const-string v14, "1013"

    const-string v15, "DETAIL"

    invoke-direct {v12, v15, v13, v14}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->DETAIL:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    new-instance v13, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/16 v14, 0xd

    const-string v15, "1014"

    move-object/from16 v16, v12

    const-string v12, "SHOW_COVER"

    invoke-direct {v13, v12, v14, v15}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->SHOW_COVER:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    move-object/from16 v12, v16

    filled-new-array/range {v0 .. v13}, [Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->$VALUES:[Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->$VALUES:[Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->id:Ljava/lang/String;

    return-object p0
.end method

.class public final enum Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

.field public static final enum DOLBY_INDEX:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

.field public static final enum EQ_INDEX:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

.field public static final enum SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

.field public static final enum UHQ_UPSCALER:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

.field public static final enum VOICE_BOOST_EFFECT:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

.field public static final enum VOLUME_NORMALIZATION_EFFECT:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;


# instance fields
.field private final settingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    const/4 v1, 0x0

    const-string v2, "DOLBY_ATMOS_LEVEL"

    const-string v3, "DOLBY_INDEX"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->DOLBY_INDEX:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    const/4 v2, 0x1

    const-string v3, "EQUALIZER_PRESET_INDEX"

    const-string v4, "EQ_INDEX"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->EQ_INDEX:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    const-string v3, "VOICE_BOOST_EFFECT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->VOICE_BOOST_EFFECT:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    const-string v4, "VOLUME_NORMALIZATION_EFFECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->VOLUME_NORMALIZATION_EFFECT:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    new-instance v4, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    const/4 v5, 0x4

    const-string v6, "K2HD_EFFECT"

    const-string v7, "UHQ_UPSCALER"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->UHQ_UPSCALER:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    new-instance v5, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    const-string v6, "SPATIAL_AUDIO"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->settingName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;

    return-object v0
.end method


# virtual methods
.method public final getSettingName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEffectEnum;->settingName:Ljava/lang/String;

    return-object p0
.end method

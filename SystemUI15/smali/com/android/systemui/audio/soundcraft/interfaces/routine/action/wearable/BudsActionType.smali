.class public abstract enum Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

.field public static final enum EQUALIZER:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

.field public static final enum SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

.field public static final enum VOICE_BOOST:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

.field public static final enum VOLUME_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$SPATIAL_AUDIO;

    const-string v1, "SPATIAL_AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$SPATIAL_AUDIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->SPATIAL_AUDIO:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$HEAD_TRACKING;

    const-string v2, "HEAD_TRACKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$HEAD_TRACKING;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$EQUALIZER;

    const-string v3, "EQUALIZER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$EQUALIZER;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->EQUALIZER:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$VOICE_BOOST;

    const-string v4, "VOICE_BOOST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$VOICE_BOOST;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->VOICE_BOOST:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    new-instance v4, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$VOLUME_NORMALIZATION;

    const-string v5, "VOLUME_NORMALIZATION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType$VOLUME_NORMALIZATION;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->VOLUME_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;

    return-object v0
.end method


# virtual methods
.method public abstract getTag(Ljava/lang/String;)Ljava/lang/String;
.end method

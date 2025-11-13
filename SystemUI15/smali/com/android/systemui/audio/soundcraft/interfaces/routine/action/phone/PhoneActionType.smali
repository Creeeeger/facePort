.class public final enum Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

.field public static final enum DOLBY:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

.field public static final enum DOLBY_OLD:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

.field public static final enum EQUALIZER:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

.field public static final enum VOICE_BOOST:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

.field public static final enum VOLUME_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;


# instance fields
.field private final actionTag:Ljava/lang/String;

.field private final paramTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    const-string v1, "dolby_key"

    const-string v2, "DOLBY"

    const/4 v3, 0x0

    const-string v4, "dolby"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->DOLBY:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    const/4 v2, 0x1

    const-string v3, "dolby_old_key"

    const-string v5, "DOLBY_OLD"

    invoke-direct {v1, v5, v2, v4, v3}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->DOLBY_OLD:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    const-string v3, "eqpreset"

    const-string v4, "eqpreset_key"

    const-string v5, "EQUALIZER"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->EQUALIZER:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    const-string/jumbo v4, "voice_boost"

    const-string/jumbo v5, "voice_boost_key"

    const-string v6, "VOICE_BOOST"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->VOICE_BOOST:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    new-instance v4, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    const-string/jumbo v5, "volume_normalization"

    const-string/jumbo v6, "volume_normalization_key"

    const-string v7, "VOLUME_NORMALIZATION"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->VOLUME_NORMALIZATION:Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->actionTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->paramTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;

    return-object v0
.end method


# virtual methods
.method public final getActionTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->actionTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getParamTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->paramTag:Ljava/lang/String;

    return-object p0
.end method

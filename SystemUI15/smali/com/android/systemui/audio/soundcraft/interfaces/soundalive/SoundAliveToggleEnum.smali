.class public final enum Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

.field public static final Companion:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;

.field public static final enum OFF:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

.field public static final enum ON:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;


# instance fields
.field private final routineActionValue:Ljava/lang/String;

.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    const-string v1, "11111111"

    const-string v2, "ON"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->ON:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    const-string v2, "OFF"

    const-string v5, "00000000"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->OFF:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    filled-new-array {v0, v1}, [Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->value:Z

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->routineActionValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    return-object v0
.end method


# virtual methods
.method public final getRoutineActionValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->routineActionValue:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->value:Z

    return p0
.end method

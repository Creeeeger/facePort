.class public final enum Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

.field public static final enum Balanced:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;


# instance fields
.field private final nameResId:I

.field private final realIndex:I

.field private final routineActionValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    const/4 v2, 0x0

    const v3, 0x7f13128b

    const-string v1, "Balanced"

    const/4 v4, 0x0

    const-string v5, "00000000"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->Balanced:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    const/4 v9, 0x1

    const v10, 0x7f13128c

    const-string v8, "BaseBoost"

    const/4 v11, 0x1

    const-string v12, "11111111"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    const/4 v15, 0x2

    const v16, 0x7f131290

    const-string v14, "Smooth"

    const/16 v17, 0x2

    const-string v18, "22222222"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v3, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    const/4 v9, 0x3

    const v10, 0x7f13128f

    const-string v8, "Dynamic"

    const/4 v11, 0x3

    const-string v12, "33333333"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v4, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    const/4 v15, 0x4

    const v16, 0x7f13128d

    const-string v14, "Clear"

    const/16 v17, 0x4

    const-string v18, "44444444"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v5, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    const/4 v9, 0x5

    const v10, 0x7f131291

    const-string v8, "TrebleBoost"

    const/4 v11, 0x6

    const-string v12, "66666666"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v7, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    const/4 v15, 0x6

    const v16, 0x7f13128e

    const-string v14, "Custom"

    const/16 v17, 0x5

    const-string v18, "55555555"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    move-object v0, v6

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->nameResId:I

    iput p4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->realIndex:I

    iput-object p5, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->routineActionValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;

    return-object v0
.end method


# virtual methods
.method public final getNameResId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->nameResId:I

    return p0
.end method

.method public final getRealIndex()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->realIndex:I

    return p0
.end method

.method public final getRoutineActionValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveEqEnum;->routineActionValue:Ljava/lang/String;

    return-object p0
.end method

.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

.field public static final enum ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

.field public static final enum BROADCAST_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

.field public static final enum RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

.field public static final enum ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;
    .locals 4

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->BROADCAST_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    const-string v1, "ACTIVE_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    const-string v1, "RINGER_MODE_INTERNAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    const-string v1, "ZEN_MODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    const-string v1, "BROADCAST_MODE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->BROADCAST_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    return-object v0
.end method

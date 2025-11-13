.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum DISABLED_FIXED_SESSION:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum MUTE_SUPPORT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_APP_MIRRORING:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_BUDS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_BUDS3:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_HEADSET:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_HEARING_AID:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_HOME_MINI:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_REMOTE_SPEAKER:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;
    .locals 12

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTE_SUPPORT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BUDS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BUDS3:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_APP_MIRRORING:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_REMOTE_SPEAKER:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HEADSET:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v9, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HOME_MINI:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v10, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HEARING_AID:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    sget-object v11, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DISABLED_FIXED_SESSION:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    filled-new-array/range {v0 .. v11}, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "MUTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "MUTE_SUPPORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTE_SUPPORT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "ROUTED_TO_BT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "ROUTED_TO_BUDS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BUDS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "ROUTED_TO_BUDS3"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BUDS3:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "ROUTED_TO_APP_MIRRORING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_APP_MIRRORING:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "ROUTED_TO_REMOTE_SPEAKER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_REMOTE_SPEAKER:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "ROUTED_TO_HEADSET"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HEADSET:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "ROUTED_TO_HOME_MINI"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HOME_MINI:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "ROUTED_TO_HEARING_AID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_HEARING_AID:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "DISABLED_FIXED_SESSION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DISABLED_FIXED_SESSION:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    return-object v0
.end method

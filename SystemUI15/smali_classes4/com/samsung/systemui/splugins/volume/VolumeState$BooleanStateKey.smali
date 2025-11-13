.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum IS_AOD_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum IS_LE_BROADCASTING:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
    .locals 9

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_AOD_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_LE_BROADCASTING:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    filled-new-array/range {v0 .. v8}, [Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "FIXED_SCO_VOLUME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "IS_DUAL_AUDIO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "IS_FROM_KEY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "DISALLOW_RINGER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "DISALLOW_SYSTEM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "DISALLOW_MEDIA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "REMOTE_MIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "IS_AOD_VOLUME_PANEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_AOD_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "IS_LE_BROADCASTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_LE_BROADCASTING:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    return-object v0
.end method

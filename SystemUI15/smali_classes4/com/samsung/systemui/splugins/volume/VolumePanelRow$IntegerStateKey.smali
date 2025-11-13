.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
    .locals 9

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    filled-new-array/range {v0 .. v8}, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "REAL_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "LEVEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "LEVEL_MIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "LEVEL_MAX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "ICON_TYPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "AUDIBLE_LEVEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "EAR_PROTECT_LEVEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "PRIORITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "ORIGINAL_PRIORITY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    return-object v0
.end method

.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;
    .locals 10

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    sget-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "IMPORTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "ROUTED_TO_BLUETOOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "MUTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "SLIDER_ENABLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "TRACKING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "VISIBILITY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "ICON_CLICKABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "ICON_ENABLED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const-string v1, "ACTIVE_NOW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    return-object v0
.end method

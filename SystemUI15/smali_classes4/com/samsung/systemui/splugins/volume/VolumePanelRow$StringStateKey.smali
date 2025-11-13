.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

.field public static final enum SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;
    .locals 5

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v1, "REMOTE_LABEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v1, "DUAL_BT_DEVICE_ADDRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v1, "DUAL_BT_DEVICE_NAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v1, "SMART_VIEW_LABEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    const-string v1, "NAME_RES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    return-object v0
.end method

.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum BT_CALL_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;


# instance fields
.field private final fieldName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
    .locals 6

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_CALL_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v1, 0x0

    const-string v2, "smartViewDeviceName"

    const-string v3, "SMART_VIEW_DEVICE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v1, 0x1

    const-string v2, "activeBtDeviceName"

    const-string v3, "ACTIVE_BT_DEVICE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v1, 0x2

    const-string v2, "pinAppName"

    const-string v3, "PIN_APP_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v1, 0x3

    const-string v2, "pinDeviceName"

    const-string v3, "PIN_DEVICE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v1, 0x4

    const-string v2, "btCallDeviceName"

    const-string v3, "BT_CALL_DEVICE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_CALL_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v1, 0x5

    const-string v2, "audioSharingDeviceName"

    const-string v3, "AUDIO_SHARING_DEVICE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->fieldName:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    return-object v0
.end method


# virtual methods
.method public final getFieldName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->fieldName:Ljava/lang/String;

    return-object p0
.end method

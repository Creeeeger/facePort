.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

.field public static final enum SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;


# instance fields
.field private final fieldName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    filled-new-array {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    const/4 v1, 0x0

    const-string v2, "systemTimeNow"

    const-string v3, "SYSTEM_TIME_NOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->$values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->fieldName:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    return-object v0
.end method


# virtual methods
.method public final getFieldName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->fieldName:Ljava/lang/String;

    return-object p0
.end method

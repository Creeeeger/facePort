.class public final enum Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

.field public static final enum ALARMS:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

.field public static final Companion:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode$Companion;

.field public static final enum IMPORTANT_INTERRUPTIONS:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

.field public static final enum NO_INTERRUPTIONS:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

.field public static final enum OFF:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;


# instance fields
.field private final zenMode:I


# direct methods
.method private static final synthetic $values()[Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;
    .locals 4

    sget-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->OFF:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    sget-object v1, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->IMPORTANT_INTERRUPTIONS:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    sget-object v2, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->NO_INTERRUPTIONS:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    sget-object v3, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->ALARMS:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->OFF:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    new-instance v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    const-string v1, "IMPORTANT_INTERRUPTIONS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->IMPORTANT_INTERRUPTIONS:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    new-instance v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    const-string v1, "NO_INTERRUPTIONS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->NO_INTERRUPTIONS:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    new-instance v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    const-string v1, "ALARMS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->ALARMS:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->$values()[Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->$VALUES:[Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->Companion:Lcom/android/systemui/plugins/clocks/ZenData$ZenMode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->zenMode:I

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

    sget-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;
    .locals 1

    const-class v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;
    .locals 1

    sget-object v0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->$VALUES:[Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;

    return-object v0
.end method


# virtual methods
.method public final getZenMode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/clocks/ZenData$ZenMode;->zenMode:I

    return p0
.end method

.class public final enum Lcom/android/systemui/plugins/clocks/ClockTickRate;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/plugins/clocks/ClockTickRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/android/systemui/plugins/clocks/ClockTickRate;

.field public static final enum PER_FRAME:Lcom/android/systemui/plugins/clocks/ClockTickRate;

.field public static final enum PER_MINUTE:Lcom/android/systemui/plugins/clocks/ClockTickRate;

.field public static final enum PER_SECOND:Lcom/android/systemui/plugins/clocks/ClockTickRate;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/android/systemui/plugins/clocks/ClockTickRate;
    .locals 3

    sget-object v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->PER_MINUTE:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    sget-object v1, Lcom/android/systemui/plugins/clocks/ClockTickRate;->PER_SECOND:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    sget-object v2, Lcom/android/systemui/plugins/clocks/ClockTickRate;->PER_FRAME:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/plugins/clocks/ClockTickRate;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;

    const-string v1, "PER_MINUTE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/plugins/clocks/ClockTickRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->PER_MINUTE:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;

    const-string v1, "PER_SECOND"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lcom/android/systemui/plugins/clocks/ClockTickRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->PER_SECOND:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;

    const-string v1, "PER_FRAME"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/plugins/clocks/ClockTickRate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->PER_FRAME:Lcom/android/systemui/plugins/clocks/ClockTickRate;

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockTickRate;->$values()[Lcom/android/systemui/plugins/clocks/ClockTickRate;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->$VALUES:[Lcom/android/systemui/plugins/clocks/ClockTickRate;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->value:I

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

    sget-object v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/ClockTickRate;
    .locals 1

    const-class v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/clocks/ClockTickRate;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/plugins/clocks/ClockTickRate;
    .locals 1

    sget-object v0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->$VALUES:[Lcom/android/systemui/plugins/clocks/ClockTickRate;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/plugins/clocks/ClockTickRate;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/clocks/ClockTickRate;->value:I

    return p0
.end method

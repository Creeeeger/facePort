.class public final enum Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

.field public static final Companion:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate$Companion;

.field public static final enum FINISH_CLOSED:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

.field public static final enum FINISH_FULL_OPEN:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

.field public static final enum FINISH_HALF_OPEN:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

.field public static final enum START_CLOSING:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

.field public static final enum START_OPENING:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    const-string v1, "START_OPENING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->START_OPENING:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    new-instance v1, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    const-string v2, "START_CLOSING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->START_CLOSING:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    new-instance v2, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    const-string v3, "FINISH_HALF_OPEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->FINISH_HALF_OPEN:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    new-instance v3, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    const-string v4, "FINISH_FULL_OPEN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->FINISH_FULL_OPEN:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    new-instance v4, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    const-string v5, "FINISH_CLOSED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->FINISH_CLOSED:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->$VALUES:[Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->Companion:Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;
    .locals 1

    const-class v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;
    .locals 1

    sget-object v0, Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;->$VALUES:[Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/unfold/data/repository/FoldStateRepository$FoldUpdate;

    return-object v0
.end method

.class public final enum Lcom/samsung/sesl/compose/foundation/RecoilType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/sesl/compose/foundation/RecoilType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/sesl/compose/foundation/RecoilType;

.field public static final enum Button:Lcom/samsung/sesl/compose/foundation/RecoilType;

.field public static final enum List:Lcom/samsung/sesl/compose/foundation/RecoilType;


# instance fields
.field private final scaleRatio:F

.field private final showFeedbackFront:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/sesl/compose/foundation/RecoilType;

    const-string v1, "List"

    const/4 v2, 0x0

    const v3, 0x3f7ae148    # 0.98f

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/samsung/sesl/compose/foundation/RecoilType;-><init>(Ljava/lang/String;IFZ)V

    new-instance v1, Lcom/samsung/sesl/compose/foundation/RecoilType;

    const-string v2, "Card"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/samsung/sesl/compose/foundation/RecoilType;-><init>(Ljava/lang/String;IFZ)V

    new-instance v2, Lcom/samsung/sesl/compose/foundation/RecoilType;

    const v3, 0x3f75c28f    # 0.96f

    const-string v5, "Button"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/samsung/sesl/compose/foundation/RecoilType;-><init>(Ljava/lang/String;IFZ)V

    sput-object v2, Lcom/samsung/sesl/compose/foundation/RecoilType;->Button:Lcom/samsung/sesl/compose/foundation/RecoilType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/sesl/compose/foundation/RecoilType;

    move-result-object v0

    sput-object v0, Lcom/samsung/sesl/compose/foundation/RecoilType;->$VALUES:[Lcom/samsung/sesl/compose/foundation/RecoilType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/sesl/compose/foundation/RecoilType;->scaleRatio:F

    iput-boolean p4, p0, Lcom/samsung/sesl/compose/foundation/RecoilType;->showFeedbackFront:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/sesl/compose/foundation/RecoilType;
    .locals 1

    const-class v0, Lcom/samsung/sesl/compose/foundation/RecoilType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/foundation/RecoilType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/sesl/compose/foundation/RecoilType;
    .locals 1

    sget-object v0, Lcom/samsung/sesl/compose/foundation/RecoilType;->$VALUES:[Lcom/samsung/sesl/compose/foundation/RecoilType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/sesl/compose/foundation/RecoilType;

    return-object v0
.end method


# virtual methods
.method public final getScaleRatio$core_release()F
    .locals 0

    iget p0, p0, Lcom/samsung/sesl/compose/foundation/RecoilType;->scaleRatio:F

    return p0
.end method

.method public final getShowFeedbackFront$core_release()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/sesl/compose/foundation/RecoilType;->showFeedbackFront:Z

    return p0
.end method

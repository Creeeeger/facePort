.class public final enum Lcom/android/systemui/user/data/model/SelectionStatus;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/user/data/model/SelectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/user/data/model/SelectionStatus;

.field public static final enum SELECTION_COMPLETE:Lcom/android/systemui/user/data/model/SelectionStatus;

.field public static final enum SELECTION_IN_PROGRESS:Lcom/android/systemui/user/data/model/SelectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/user/data/model/SelectionStatus;

    const-string v1, "SELECTION_IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/user/data/model/SelectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/user/data/model/SelectionStatus;->SELECTION_IN_PROGRESS:Lcom/android/systemui/user/data/model/SelectionStatus;

    new-instance v1, Lcom/android/systemui/user/data/model/SelectionStatus;

    const-string v2, "SELECTION_COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/user/data/model/SelectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/user/data/model/SelectionStatus;->SELECTION_COMPLETE:Lcom/android/systemui/user/data/model/SelectionStatus;

    filled-new-array {v0, v1}, [Lcom/android/systemui/user/data/model/SelectionStatus;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/user/data/model/SelectionStatus;->$VALUES:[Lcom/android/systemui/user/data/model/SelectionStatus;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/user/data/model/SelectionStatus;
    .locals 1

    const-class v0, Lcom/android/systemui/user/data/model/SelectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/data/model/SelectionStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/user/data/model/SelectionStatus;
    .locals 1

    sget-object v0, Lcom/android/systemui/user/data/model/SelectionStatus;->$VALUES:[Lcom/android/systemui/user/data/model/SelectionStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/user/data/model/SelectionStatus;

    return-object v0
.end method

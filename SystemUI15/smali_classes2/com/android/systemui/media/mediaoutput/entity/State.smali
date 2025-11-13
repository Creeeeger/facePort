.class public final enum Lcom/android/systemui/media/mediaoutput/entity/State;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/mediaoutput/entity/State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/mediaoutput/entity/State;

.field public static final enum CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

.field public static final enum CONNECTING:Lcom/android/systemui/media/mediaoutput/entity/State;

.field public static final enum DISCONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

.field public static final enum GROUPING:Lcom/android/systemui/media/mediaoutput/entity/State;

.field public static final enum SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/entity/State;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/systemui/media/mediaoutput/entity/State;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/media/mediaoutput/entity/State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/entity/State;

    const-string v3, "CONNECTING"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/android/systemui/media/mediaoutput/entity/State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTING:Lcom/android/systemui/media/mediaoutput/entity/State;

    new-instance v3, Lcom/android/systemui/media/mediaoutput/entity/State;

    const-string v4, "DISCONNECTED"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/android/systemui/media/mediaoutput/entity/State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/media/mediaoutput/entity/State;->DISCONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    new-instance v4, Lcom/android/systemui/media/mediaoutput/entity/State;

    const-string v5, "CONNECTING_FAILED"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/android/systemui/media/mediaoutput/entity/State;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/media/mediaoutput/entity/State;

    const-string v6, "SELECTED"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/android/systemui/media/mediaoutput/entity/State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    new-instance v6, Lcom/android/systemui/media/mediaoutput/entity/State;

    const-string v7, "GROUPING"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lcom/android/systemui/media/mediaoutput/entity/State;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/media/mediaoutput/entity/State;->GROUPING:Lcom/android/systemui/media/mediaoutput/entity/State;

    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/media/mediaoutput/entity/State;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/State;->$VALUES:[Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/State$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/entity/State$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/mediaoutput/entity/State;
    .locals 1

    const-class v0, Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/entity/State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/mediaoutput/entity/State;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/State;->$VALUES:[Lcom/android/systemui/media/mediaoutput/entity/State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/mediaoutput/entity/State;

    return-object v0
.end method

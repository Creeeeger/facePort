.class public final enum Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

.field public static final enum ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

.field public static final Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState$Companion;

.field public static final enum INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

.field public static final enum UNAVAILABLE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;


# instance fields
.field private final legacyState:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->UNAVAILABLE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    new-instance v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const-string v2, "ACTIVE"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    new-instance v2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const-string v5, "INACTIVE"

    invoke-direct {v2, v5, v4, v3}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->$VALUES:[Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState$Companion;

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

    iput p3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->legacyState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->$VALUES:[Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    return-object v0
.end method


# virtual methods
.method public final getLegacyState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->legacyState:I

    return p0
.end method

.class final enum Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

.field public static final enum LOCATION_INDICATOR_MONITOR_HIGH_POWER:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

.field public static final enum LOCATION_INDICATOR_NON_SYSTEM_APP:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

.field public static final enum LOCATION_INDICATOR_SYSTEM_APP:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    const/4 v1, 0x0

    const/16 v2, 0x3a7

    const-string v3, "LOCATION_INDICATOR_MONITOR_HIGH_POWER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_MONITOR_HIGH_POWER:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    const/4 v2, 0x1

    const/16 v3, 0x3a8

    const-string v4, "LOCATION_INDICATOR_SYSTEM_APP"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_SYSTEM_APP:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    new-instance v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    const/4 v3, 0x2

    const/16 v4, 0x3a9

    const-string v5, "LOCATION_INDICATOR_NON_SYSTEM_APP"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->LOCATION_INDICATOR_NON_SYSTEM_APP:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->$VALUES:[Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

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

    iput p3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->$VALUES:[Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$LocationIndicatorEvent;->mId:I

    return p0
.end method

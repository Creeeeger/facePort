.class final enum Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

.field public static final enum CONTROL_DRAG:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

.field public static final enum CONTROL_REFRESH_BEGIN:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

.field public static final enum CONTROL_REFRESH_END:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

.field public static final enum CONTROL_TOUCH:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;


# instance fields
.field private final metricId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const/16 v1, 0x2ca

    const-string v2, "CONTROL_TOUCH"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_TOUCH:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    new-instance v1, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const/16 v2, 0x2c9

    const-string v3, "CONTROL_DRAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_DRAG:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    new-instance v2, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const/16 v3, 0x2cb

    const-string v4, "CONTROL_LONG_PRESS"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const/16 v4, 0x2cc

    const-string v5, "CONTROL_REFRESH_BEGIN"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_BEGIN:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    new-instance v4, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    const/16 v5, 0x2cd

    const-string v6, "CONTROL_REFRESH_END"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_END:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->$VALUES:[Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->metricId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;
    .locals 1

    const-class v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;
    .locals 1

    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->$VALUES:[Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->metricId:I

    return p0
.end method

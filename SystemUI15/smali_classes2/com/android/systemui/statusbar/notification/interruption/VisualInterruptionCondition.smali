.class public abstract Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionCondition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final eventLogData:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionSuppressor$EventLogData;

.field public final reason:Ljava/lang/String;

.field public final types:Ljava/util/Set;

.field public final uiEventId:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionCondition;-><init>(Ljava/util/Set;Ljava/lang/String;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionSuppressor$EventLogData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionSuppressor$EventLogData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;",
            "Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionSuppressor$EventLogData;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionCondition;->types:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/lang/String;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionSuppressor$EventLogData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionCondition;-><init>(Ljava/util/Set;Ljava/lang/String;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionSuppressor$EventLogData;)V

    return-void
.end method

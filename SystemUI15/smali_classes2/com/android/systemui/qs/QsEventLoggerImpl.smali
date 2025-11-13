.class public final Lcom/android/systemui/qs/QsEventLoggerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QsEventLogger;
.implements Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/internal/logging/UiEventLogger;

.field public final sequence:Lcom/android/internal/logging/InstanceIdSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/QsEventLoggerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QsEventLoggerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->$$delegate_0:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    const/high16 v0, 0x100000

    invoke-direct {p1, v0}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->sequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-void
.end method


# virtual methods
.method public final log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->$$delegate_0:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->$$delegate_0:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method

.method public final log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->$$delegate_0:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->$$delegate_0:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->$$delegate_0:Lcom/android/internal/logging/UiEventLogger;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    return-void
.end method

.method public final logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->$$delegate_0:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    return-void
.end method

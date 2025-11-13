.class public interface abstract Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Companion;->$r8$clinit:I

    return-void
.end method


# virtual methods
.method public abstract getLevel()I
.end method

.method public logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;->logPartial(Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V

    return-void
.end method

.method public logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;->logFully(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V

    return-void
.end method

.method public abstract logFully(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
.end method

.method public abstract logPartial(Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
.end method

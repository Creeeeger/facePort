.class public final Lcom/android/systemui/shade/ShadeLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v2, "systemui.shade"

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final logEndMotionEvent(Ljava/lang/String;ZZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/shade/ShadeLogger$logEndMotionEvent$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logEndMotionEvent$2;

    const-string/jumbo v2, "systemui.shade"

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean p2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p3, v1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logExpansionChanged(Ljava/lang/String;FZZF)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/shade/ShadeLogger$logExpansionChanged$2;

    invoke-direct {v1, p5}, Lcom/android/systemui/shade/ShadeLogger$logExpansionChanged$2;-><init>(F)V

    const-string/jumbo v2, "systemui.shade"

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    float-to-double p1, p2

    iput-wide p1, v1, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    iput-boolean p3, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p4, v1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    float-to-long p1, p5

    iput-wide p1, v1, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/shade/ShadeLogger$logMotionEvent$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logMotionEvent$2;

    const-string/jumbo v2, "systemui.shade"

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    iput p2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result p1

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;

    const-string/jumbo v2, "systemui.shade"

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p3, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    iput p3, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput p2, v1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, v1, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUpdateNotificationPanelTouchState(ZZZZZ)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v3, "systemui.shade"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, p1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean p3, p1, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    iput-boolean p4, p1, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v2, "systemui.shade"

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

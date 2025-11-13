.class public final Lcom/android/systemui/shade/TouchLogger$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shade/TouchLogger$Companion;-><init>()V

    return-void
.end method

.method public static logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .locals 5

    sget-object v0, Lcom/android/systemui/shade/TouchLogger;->touchLogger:Lcom/android/systemui/shade/DispatchTouchLogger;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v2, Lcom/android/systemui/shade/DispatchTouchLogger$logDispatchTouch$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/shade/DispatchTouchLogger$logDispatchTouch$2;-><init>(Lcom/android/systemui/shade/DispatchTouchLogger;)V

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/shade/DispatchTouchLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v4, "systemui.shade.touch"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p0

    iput-wide p0, v2, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    iput-boolean p2, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return-void
.end method

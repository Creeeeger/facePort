.class public final Lcom/android/systemui/plank/monitor/TestInputHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;


# instance fields
.field public final displaySize:Landroid/graphics/Point;

.field public final mContext:Landroid/content/Context;

.field public final mEventHistory:Ljava/util/List;

.field public mLastEventTime:J

.field public mStartEventTime:J

.field public mStartX:I

.field public mStartY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/plank/monitor/TestInputHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/plank/monitor/TestInputHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->displaySize:Landroid/graphics/Point;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public final addEvent(Lcom/android/systemui/plank/monitor/EventData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onEventHandler(Landroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v8, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v9, v1

    iget v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    sub-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    sub-int v4, v9, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v10, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartEventTime:J

    sub-long/2addr v5, v10

    const/16 v7, 0x19

    int-to-long v10, v7

    div-long/2addr v5, v10

    long-to-int v7, v5

    if-gt v1, v2, :cond_6

    if-gt v4, v2, :cond_6

    iget-object v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    iget v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    iget-object v2, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->displaySize:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-gt v1, v4, :cond_3

    iget v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-gt v1, v2, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    iget v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    iget-object v2, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-gt v1, v3, :cond_3

    iget v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_4

    :cond_3
    sget-object v1, Lcom/android/systemui/plank/monitor/EventFactory;->Companion:Lcom/android/systemui/plank/monitor/EventFactory$Companion;

    iget v6, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    iget v7, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/plank/monitor/EventData;

    sget-object v3, Lcom/android/systemui/plank/monitor/EventType;->SWIPE:Lcom/android/systemui/plank/monitor/EventType;

    const/4 v9, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    move v4, v6

    move v5, v7

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/plank/monitor/EventData;-><init>(Lcom/android/systemui/plank/monitor/EventType;IIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/plank/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/plank/monitor/EventData;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    if-lt v7, v1, :cond_5

    sget-object v1, Lcom/android/systemui/plank/monitor/EventFactory;->Companion:Lcom/android/systemui/plank/monitor/EventFactory$Companion;

    iget v14, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    iget v15, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/plank/monitor/EventData;

    sget-object v11, Lcom/android/systemui/plank/monitor/EventType;->LONGCLICK:Lcom/android/systemui/plank/monitor/EventType;

    const/16 v17, 0x0

    move-object v10, v1

    move v12, v14

    move v13, v15

    move/from16 v16, v7

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/plank/monitor/EventData;-><init>(Lcom/android/systemui/plank/monitor/EventType;IIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/plank/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/plank/monitor/EventData;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/android/systemui/plank/monitor/EventFactory;->Companion:Lcom/android/systemui/plank/monitor/EventFactory$Companion;

    iget v4, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    iget v5, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/plank/monitor/EventData;

    sget-object v3, Lcom/android/systemui/plank/monitor/EventType;->CLICK:Lcom/android/systemui/plank/monitor/EventType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/plank/monitor/EventData;-><init>(Lcom/android/systemui/plank/monitor/EventType;IIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/plank/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/plank/monitor/EventData;)V

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/systemui/plank/monitor/EventFactory;->Companion:Lcom/android/systemui/plank/monitor/EventFactory$Companion;

    iget v6, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    iget v2, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/plank/monitor/EventData;

    sget-object v5, Lcom/android/systemui/plank/monitor/EventType;->SWIPE:Lcom/android/systemui/plank/monitor/EventType;

    const/4 v11, 0x0

    move-object v4, v1

    move v3, v7

    move v7, v2

    move v10, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/plank/monitor/EventData;-><init>(Lcom/android/systemui/plank/monitor/EventType;IIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/plank/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/plank/monitor/EventData;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mLastEventTime:J

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartY:I

    iget-wide v3, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mLastEventTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mLastEventTime:J

    sub-long/2addr v3, v5

    long-to-int v12, v3

    if-lt v12, v2, :cond_8

    sget-object v1, Lcom/android/systemui/plank/monitor/EventFactory;->Companion:Lcom/android/systemui/plank/monitor/EventFactory$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/plank/monitor/EventData;

    sget-object v6, Lcom/android/systemui/plank/monitor/EventType;->SLEEP:Lcom/android/systemui/plank/monitor/EventType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/plank/monitor/EventData;-><init>(Lcom/android/systemui/plank/monitor/EventType;IIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/plank/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/plank/monitor/EventData;)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/plank/monitor/TestInputHandler;->mStartEventTime:J

    :goto_2
    return-void
.end method

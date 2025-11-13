.class public Landroid/telecom/Logging/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/EventManager$EventRecord;,
        Landroid/telecom/Logging/EventManager$Event;,
        Landroid/telecom/Logging/EventManager$TimedEventPair;,
        Landroid/telecom/Logging/EventManager$EventListener;,
        Landroid/telecom/Logging/EventManager$Loggable;
    }
.end annotation


# static fields
.field public static final blacklist DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final blacklist DEFAULT_EVENTS_TO_CACHE:I = 0xa

.field public static final blacklist TAG:Ljava/lang/String; = "Logging.Events"

.field private static final blacklist mSync:Ljava/lang/Object;


# instance fields
.field private final blacklist mCallEventRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Logging/EventManager$Loggable;",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

.field private final blacklist requestResponsePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$TimedEventPair;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallEventRecordMap(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrequestResponsePairs(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    nop

    .line 56
    const-string v0, "HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Landroid/telecom/Logging/EventManager;->DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;)V
    .locals 2
    .param p1, "l"    # Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    .line 281
    iput-object p1, p0, Landroid/telecom/Logging/EventManager;->mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    .line 282
    return-void
.end method

.method private blacklist addEventRecord(Landroid/telecom/Logging/EventManager$EventRecord;)V
    .locals 5
    .param p1, "newRecord"    # Landroid/telecom/Logging/EventManager$EventRecord;

    .line 411
    invoke-virtual {p1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v0

    .line 414
    .local v0, "recordEntry":Landroid/telecom/Logging/EventManager$Loggable;
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v1

    if-nez v1, :cond_0

    .line 415
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 416
    .local v1, "record":Landroid/telecom/Logging/EventManager$EventRecord;
    if-eqz v1, :cond_0

    .line 417
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .end local v1    # "record":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    nop

    .line 432
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v1, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_1
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/EventManager$EventListener;

    .line 435
    .local v3, "l":Landroid/telecom/Logging/EventManager$EventListener;
    invoke-interface {v3, p1}, Landroid/telecom/Logging/EventManager$EventListener;->eventRecordAdded(Landroid/telecom/Logging/EventManager$EventRecord;)V

    .line 436
    .end local v3    # "l":Landroid/telecom/Logging/EventManager$EventListener;
    goto :goto_0

    .line 437
    :cond_1
    monitor-exit v1

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Logging.Events"

    const-string v3, "addEventRecord - Can\'t add new record"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    return-void
.end method

.method static synthetic blacklist lambda$dumpEventsTimeline$0(Landroid/util/Pair;)J
    .locals 2
    .param p0, "e"    # Landroid/util/Pair;

    .line 350
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/EventManager$Event;

    iget-wide v0, v0, Landroid/telecom/Logging/EventManager$Event;->time:J

    return-wide v0
.end method


# virtual methods
.method public blacklist addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V
    .locals 3
    .param p1, "p"    # Landroid/telecom/Logging/EventManager$TimedEventPair;

    .line 120
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v1, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v1, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telecom/Logging/EventManager$TimedEventPair;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v2, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v0    # "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telecom/Logging/EventManager$TimedEventPair;>;"
    :goto_0
    return-void
.end method

.method public blacklist changeEventCacheSize(I)V
    .locals 2
    .param p1, "newSize"    # I

    .line 369
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 370
    .local v0, "oldEventLog":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/telecom/Logging/EventManager$EventRecord;>;"
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 371
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 373
    new-instance v1, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Logging/EventManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->forEach(Ljava/util/function/Consumer;)V

    .line 390
    return-void
.end method

.method public blacklist dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 323
    const-string v0, "Historical Events:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 325
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 326
    .local v1, "eventRecord":Landroid/telecom/Logging/EventManager$EventRecord;
    invoke-virtual {v1, p1}, Landroid/telecom/Logging/EventManager$EventRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 327
    .end local v1    # "eventRecord":Landroid/telecom/Logging/EventManager$EventRecord;
    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 329
    return-void
.end method

.method public blacklist dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 337
    const-string v0, "Historical Events (sorted by time):"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/telecom/Logging/EventManager$Loggable;Landroid/telecom/Logging/EventManager$Event;>;>;"
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 342
    .local v2, "er":Landroid/telecom/Logging/EventManager$EventRecord;
    invoke-virtual {v2}, Landroid/telecom/Logging/EventManager$EventRecord;->getEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    .line 343
    .local v4, "ev":Landroid/telecom/Logging/EventManager$Event;
    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v4    # "ev":Landroid/telecom/Logging/EventManager$Event;
    goto :goto_1

    .line 345
    .end local v2    # "er":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_0
    goto :goto_0

    .line 349
    :cond_1
    new-instance v1, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda0;-><init>()V

    .line 350
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 351
    .local v1, "byEventTime":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/util/Pair<Landroid/telecom/Logging/EventManager$Loggable;Landroid/telecom/Logging/EventManager$Event;>;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 353
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 354
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 355
    .local v3, "event":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/telecom/Logging/EventManager$Loggable;Landroid/telecom/Logging/EventManager$Event;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    iget-object v4, v4, Landroid/telecom/Logging/EventManager$Event;->timestampString:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 356
    const-string v4, ","

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v5}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/Logging/EventManager$Event;

    iget-object v5, v5, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 361
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    iget-object v4, v4, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 362
    .end local v3    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/telecom/Logging/EventManager$Loggable;Landroid/telecom/Logging/EventManager$Event;>;"
    goto :goto_2

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 364
    return-void
.end method

.method public blacklist event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "currentSessionID":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 288
    const-string v2, "Logging.Events"

    const-string v3, "Non-call EVENT: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const/4 v1, 0x1

    aput-object p3, v4, v1

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    return-void

    .line 291
    :cond_0
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v2

    .line 292
    :try_start_0
    iget-object v3, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    new-instance v3, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-direct {v3, p0, p1}, Landroid/telecom/Logging/EventManager$EventRecord;-><init>(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$Loggable;)V

    .line 294
    .local v3, "newRecord":Landroid/telecom/Logging/EventManager$EventRecord;
    invoke-direct {p0, v3}, Landroid/telecom/Logging/EventManager;->addEventRecord(Landroid/telecom/Logging/EventManager$EventRecord;)V

    .line 297
    .end local v3    # "newRecord":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_1
    iget-object v3, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 299
    .local v3, "record":Landroid/telecom/Logging/EventManager$EventRecord;
    if-nez v3, :cond_2

    .line 300
    const-string v4, "Logging.Events"

    const-string v5, "No EventRecord in CallEventRecordMap"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    monitor-exit v2

    return-void

    .line 304
    :cond_2
    invoke-virtual {v3, p2, v0, p3}, Landroid/telecom/Logging/EventManager$EventRecord;->addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    .end local v3    # "record":Landroid/telecom/Logging/EventManager$EventRecord;
    monitor-exit v2

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs blacklist event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 311
    if-eqz p4, :cond_1

    :try_start_0
    array-length v0, p4

    if-nez v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ife":Ljava/util/IllegalFormatException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    array-length v3, p4

    .line 315
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 314
    const-string v2, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (An error occurred while formatting the message.)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg":Ljava/lang/String;
    goto :goto_2

    .line 311
    .end local v0    # "ife":Ljava/util/IllegalFormatException;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v0, p3

    .line 312
    :goto_1
    move-object v1, v0

    .line 317
    .restart local v1    # "msg":Ljava/lang/String;
    nop

    .line 319
    :goto_2
    invoke-virtual {p0, p1, p2, v1}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public blacklist getCallEventRecordMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/telecom/Logging/EventManager$Loggable;",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getEventRecords()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method synthetic blacklist lambda$changeEventCacheSize$1$android-telecom-Logging-EventManager(Landroid/telecom/Logging/EventManager$EventRecord;)V
    .locals 4
    .param p1, "newRecord"    # Landroid/telecom/Logging/EventManager$EventRecord;

    .line 374
    invoke-virtual {p1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v0

    .line 377
    .local v0, "recordEntry":Landroid/telecom/Logging/EventManager$Loggable;
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 379
    .local v1, "record":Landroid/telecom/Logging/EventManager$EventRecord;
    if-eqz v1, :cond_0

    .line 380
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .end local v1    # "record":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_0
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    return-void
.end method

.method public blacklist registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V
    .locals 2
    .param p1, "e"    # Landroid/telecom/Logging/EventManager$EventListener;

    .line 393
    if-eqz p1, :cond_0

    .line 394
    sget-object v0, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 398
    :cond_0
    :goto_0
    return-void
.end method

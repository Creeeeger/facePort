.class public Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutFactory;


# instance fields
.field public final mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4

    const-class p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p1, p3, p4, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p3}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger$logCreatedRow$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger$logCreatedRow$2;

    const-string v3, "RowInflaterTask"

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p0

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p0, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-wide p3, v1, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {v0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

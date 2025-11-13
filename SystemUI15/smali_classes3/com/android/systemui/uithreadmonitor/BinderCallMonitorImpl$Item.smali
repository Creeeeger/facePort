.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final compareDuration:J

.field public stackTrace:Ljava/lang/String;

.field public final startTime:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->compareDuration:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->startTime:J

    return-void
.end method

.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;-><init>(J)V

    return-void
.end method

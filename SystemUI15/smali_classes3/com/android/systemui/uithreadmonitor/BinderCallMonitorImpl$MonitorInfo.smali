.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public duration:J

.field public enabled:Z

.field public infinite:Z

.field public timeOut:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->infinite:Z

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;-><init>()V

    return-void
.end method

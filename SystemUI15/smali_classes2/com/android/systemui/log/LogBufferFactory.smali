.class public final Lcom/android/systemui/log/LogBufferFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogBufferFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p2, p0, Lcom/android/systemui/log/LogBufferFactory;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    return-void
.end method


# virtual methods
.method public final create(ILjava/lang/String;)Lcom/android/systemui/log/LogBuffer;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    new-instance v0, Lcom/android/systemui/log/LogBuffer;

    sget-object v1, Lcom/android/systemui/log/LogBufferHelper;->Companion:Lcom/android/systemui/log/LogBufferHelper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/log/LogBufferFactory;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    invoke-direct {v0, p2, p1, v1, p3}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;Z)V

    iget-object p0, p0, Lcom/android/systemui/log/LogBufferFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/dump/DumpManager;->registerBuffer(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V

    return-object v0
.end method

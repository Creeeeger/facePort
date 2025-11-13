.class final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$onChoreographerLog$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerTotalDrawCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerTotalDrawCount:I

    iget-wide v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogTime:J

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogCount:I

    const-string p0, "DOZE_SUSPEND draw count="

    const-string v0, " totalCount="

    const-string v1, "\n"

    invoke-static {v2, p1, p0, v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "UiThreadMonitor"

    invoke-static {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

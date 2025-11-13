.class public final Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cancelViewTimeout:Ljava/lang/Runnable;

.field public info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

.field public timeExpirationMillis:J

.field public view:Landroid/view/ViewGroup;

.field public wakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Landroid/view/ViewGroup;Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;JLcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;",
            "J",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->view:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    iput-wide p4, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->timeExpirationMillis:J

    iput-object p6, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->wakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iput-object p7, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->cancelViewTimeout:Ljava/lang/Runnable;

    return-void
.end method

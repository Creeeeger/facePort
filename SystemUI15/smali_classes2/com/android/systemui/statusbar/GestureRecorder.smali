.class public final Lcom/android/systemui/statusbar/GestureRecorder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

.field public final mGestures:Ljava/util/LinkedList;

.field public final mHandler:Lcom/android/systemui/statusbar/GestureRecorder$1;

.field public mLastSaveLen:I

.field public final mLogfile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I

    new-instance v0, Lcom/android/systemui/statusbar/GestureRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/GestureRecorder$1;-><init>(Lcom/android/systemui/statusbar/GestureRecorder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mHandler:Lcom/android/systemui/statusbar/GestureRecorder$1;

    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLogfile:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    return-void
.end method


# virtual methods
.method public final toJsonLocked()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

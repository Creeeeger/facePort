.class public final Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mRecords:Ljava/util/LinkedList;

.field public final mTags:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/GestureRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mRecords:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->mTags:Ljava/util/HashSet;

    return-void
.end method

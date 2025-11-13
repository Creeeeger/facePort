.class public final Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mReason:I

.field public final mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mTaskId:I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mReason:I

    return-void
.end method

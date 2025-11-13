.class Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mStackId:I

.field final mTaskId:I

.field final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mUserId:I

    iput p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mTaskId:I

    iput p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mStackId:I

    return-void
.end method

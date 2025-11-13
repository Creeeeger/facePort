.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseActivity:Landroid/content/ComponentName;

.field public final baseIntent:Landroid/content/Intent;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public final displayId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public final id:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isPairTask:Z

.field public lastActiveTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public lastGainFocusTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mHashCode:I

.field public pairDockSide:I

.field public pairedTaskIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final sourceComponent:Landroid/content/ComponentName;

.field public final userId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public windowingMode:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey$1;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey$1;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    iput p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    iput-wide p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    iput p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    iput-wide p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    iput p8, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJIZLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Landroid/content/ComponentName;",
            "IJIZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJI)V

    iput-boolean p9, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->isPairTask:Z

    iput-object p10, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairedTaskIds:Ljava/util/ArrayList;

    iput p11, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairDockSide:I

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    iput p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    iput-wide p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    iput-wide p8, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    iput p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    iput-wide p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    iput-wide p8, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    iput p10, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJIZLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Landroid/content/ComponentName;",
            "IJJIZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJI)V

    iput-boolean p11, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->isPairTask:Z

    iput-object p12, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairedTaskIds:Ljava/util/ArrayList;

    iput p13, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairDockSide:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getSourceComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getLastActiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getLastGainFocusTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->isPairTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->isPairTask:Z

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getPairedTaskIds()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairedTaskIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getSourceComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getLastActiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getLastGainFocusTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->readFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    move-result-object p0

    return-object p0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;
    .locals 14

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    new-instance p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJIZLjava/util/ArrayList;I)V

    return-object p0
.end method

.method private updateHashCode()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->mHashCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    iget v2, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    iget v2, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    iget p1, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBaseIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    return p0
.end method

.method public getLastActiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    return-wide v0
.end method

.method public getLastGainFocusTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSourceComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    return p0
.end method

.method public getWindowingMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->mHashCode:I

    return p0
.end method

.method public setWindowingMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "lastGainFocusTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->isPairTask:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairedTaskIds:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairDockSide:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

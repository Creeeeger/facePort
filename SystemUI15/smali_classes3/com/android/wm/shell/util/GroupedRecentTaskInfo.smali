.class public final Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

.field public final mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

.field public final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$1;

    invoke-direct {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ActivityManager$RecentTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    sget-object v0, Lcom/android/wm/shell/util/SplitBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/SplitBounds;

    iput-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mType:I

    return-void
.end method

.method private constructor <init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    iput p3, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mType:I

    return-void
.end method

.method public static varargs forFreeformTasks([Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .locals 3

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    return-object v0
.end method

.method public static forSingleTask(Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .locals 4

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    return-object v0
.end method

.method public static forSplitTasks(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .locals 3

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-direct {v0, v1, p3, p0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    return-object v0
.end method

.method public static forSplitTasks(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .locals 4

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-direct {v0, v2, p2, v1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    if-nez v1, :cond_0

    const-string v2, "Task"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, ", Task"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    aget-object v1, v3, v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_4

    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityManager$RecentTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " baseIntent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, "null"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " winMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RecentTaskInfo;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " stage="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    if-eqz v1, :cond_5

    const-string v1, ", SplitBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ", Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mType:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    goto :goto_5

    :cond_6
    const-string p0, "TYPE_FREEFORM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    const-string p0, "TYPE_SPLIT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const-string p0, "TYPE_SINGLE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

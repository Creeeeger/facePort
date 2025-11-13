.class public final Landroid/window/TaskFragmentInfo;
.super Ljava/lang/Object;
.source "TaskFragmentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mFragmentToken:Landroid/os/IBinder;

.field private final blacklist mInRequestedTaskFragmentActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsClearedForReorderActivityToFront:Z

.field private final blacklist mIsTaskClearedForReuse:Z

.field private final blacklist mIsTaskFragmentClearedForPip:Z

.field private final blacklist mIsVisible:Z

.field private final blacklist mMinimumDimensions:Landroid/graphics/Point;

.field private final blacklist mPositionInParent:Landroid/graphics/Point;

.field private final blacklist mRunningActivityCount:I

.field private final blacklist mToken:Landroid/window/WindowContainerToken;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TaskFragmentInfo$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentInfo$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;IZLjava/util/List;Ljava/util/List;Landroid/graphics/Point;ZZZLandroid/graphics/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerToken;",
            "Landroid/content/res/Configuration;",
            "IZ",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/graphics/Point;",
            "ZZZ",
            "Landroid/graphics/Point;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mInRequestedTaskFragmentActivities:Ljava/util/List;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iput p4, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    iput-boolean p5, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mInRequestedTaskFragmentActivities:Ljava/util/List;

    invoke-interface {v0, p7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, p8}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iput-boolean p9, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    iput-boolean p10, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    iput-boolean p11, p0, Landroid/window/TaskFragmentInfo;->mIsClearedForReorderActivityToFront:Z

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v0, p12}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mInRequestedTaskFragmentActivities:Ljava/util/List;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mInRequestedTaskFragmentActivities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsClearedForReorderActivityToFront:Z

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    iget v2, p1, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/window/TaskFragmentInfo;->getWindowingMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mInRequestedTaskFragmentActivities:Ljava/util/List;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mInRequestedTaskFragmentActivities:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsClearedForReorderActivityToFront:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsClearedForReorderActivityToFront:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0
.end method

.method public blacklist getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getActivitiesRequestedInTaskFragment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mInRequestedTaskFragmentActivities:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getFragmentToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public blacklist getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public blacklist getPositionInParent()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getRunningActivityCount()I
    .locals 1

    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    return v0
.end method

.method public blacklist getToken()Landroid/window/WindowContainerToken;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public blacklist hasRunningActivity()Z
    .locals 1

    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isClearedForReorderActivityToFront()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsClearedForReorderActivityToFront:Z

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTaskClearedForReuse()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    return v0
.end method

.method public blacklist isTaskFragmentClearedForPip()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    return v0
.end method

.method public blacklist isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentInfo{ fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runningActivityCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inRequestedTaskFragmentActivities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mInRequestedTaskFragmentActivities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " positionInParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTaskClearedForReuse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTaskFragmentClearedForPip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsClearedForReorderActivityToFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsClearedForReorderActivityToFront:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minimumDimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mInRequestedTaskFragmentActivities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsClearedForReorderActivityToFront:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

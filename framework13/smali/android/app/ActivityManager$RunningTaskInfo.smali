.class public Landroid/app/ActivityManager$RunningTaskInfo;
.super Landroid/app/TaskInfo;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningTaskInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist activeStageInfo:I

.field public blacklist adjacentStageHasRunningChild:Z

.field public whitelist description:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist id:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist numRunning:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist stageHasOtherChild:Z

.field public whitelist thumbnail:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2657
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 2602
    invoke-direct {p0}, Landroid/app/TaskInfo;-><init>()V

    .line 2603
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2605
    invoke-direct {p0}, Landroid/app/TaskInfo;-><init>()V

    .line 2606
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2607
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$RunningTaskInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 2629
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2635
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->adjacentStageHasRunningChild:Z

    .line 2636
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->stageHasOtherChild:Z

    .line 2637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->activeStageInfo:I

    .line 2640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 2641
    invoke-super {p0, p1}, Landroid/app/TaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2642
    return-void
.end method

.method public whitelist semIsFreeform()Z
    .locals 2

    .line 2619
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2648
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->adjacentStageHasRunningChild:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2649
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->stageHasOtherChild:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2650
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->activeStageInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2653
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2654
    invoke-super {p0, p1, p2}, Landroid/app/TaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2655
    return-void
.end method

.class public final Landroid/window/TransitionRequestInfo;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionRequestInfo$DisplayChange;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDebugId:I

.field private blacklist mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

.field private final blacklist mFlags:I

.field private blacklist mPipTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TransitionRequestInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;I)V
    .locals 8

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    const-class v0, Landroid/view/WindowManager$TransitionType;

    const/4 v1, 0x0

    iget v2, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p3, p0, Landroid/window/TransitionRequestInfo;->mPipTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p4, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    iput-object p5, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    iput p6, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    iput p7, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;I)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    sget-object v5, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/RemoteTransition;

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-nez v6, :cond_3

    move-object v6, v3

    goto :goto_3

    :cond_3
    sget-object v6, Landroid/window/TransitionRequestInfo$DisplayChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionRequestInfo$DisplayChange;

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    const-class v9, Landroid/view/WindowManager$TransitionType;

    iget v10, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-static {v9, v3, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v4, p0, Landroid/window/TransitionRequestInfo;->mPipTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v5, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    iput-object v6, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    iput v7, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    iput v8, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDebugId()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    return v0
.end method

.method public blacklist getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    return-object v0
.end method

.method public blacklist getFlags()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    return v0
.end method

.method public blacklist getPipTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mPipTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionRequestInfo;->mType:I

    return v0
.end method

.method public blacklist setDisplayChange(Landroid/window/TransitionRequestInfo$DisplayChange;)Landroid/window/TransitionRequestInfo;
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    return-object p0
.end method

.method public blacklist setPipTask(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/window/TransitionRequestInfo;
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mPipTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/window/TransitionRequestInfo;
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object p0
.end method

.method public blacklist setTriggerTask(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/window/TransitionRequestInfo;
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionRequestInfo { type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->typeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pipTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debugId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist typeToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-static {v0}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_1
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_2
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v1, :cond_3

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_4
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_5
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_6
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_7
    iget v1, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public final Landroid/window/RemoteTransition;
.super Ljava/lang/Object;
.source "RemoteTransition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/RemoteTransition;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_CAN_BE_FORCE_MERGED_TO_REMOTE_TRANSIT:I = 0x1


# instance fields
.field private blacklist mAppThread:Landroid/app/IApplicationThread;

.field private blacklist mDebugName:Ljava/lang/String;

.field private blacklist mFlags:I

.field private blacklist mRemoteTransition:Landroid/window/IRemoteTransition;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/RemoteTransition$1;

    invoke-direct {v0}, Landroid/window/RemoteTransition$1;-><init>()V

    sput-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/IRemoteTransition$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransition;

    move-result-object v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-static {v5, v3, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    iput-object v4, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/window/RemoteTransition;->mFlags:I

    :cond_2
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IRemoteTransition;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    iput-object p3, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IRemoteTransition;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "NONE"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    const-string v1, "CAN_BE_FORCE_MERGED_TO_REMOTE_TRANSIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppThread()Landroid/app/IApplicationThread;
    .locals 1

    iget-object v0, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public blacklist getDebugName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFlags()I
    .locals 1

    iget v0, p0, Landroid/window/RemoteTransition;->mFlags:I

    return v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/IRemoteTransition;
    .locals 1

    iget-object v0, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    return-object v0
.end method

.method public blacklist setAppThread(Landroid/app/IApplicationThread;)Landroid/window/RemoteTransition;
    .locals 0

    iput-object p1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public blacklist setDebugName(Ljava/lang/String;)Landroid/window/RemoteTransition;
    .locals 0

    iput-object p1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/window/RemoteTransition;
    .locals 0

    iput p1, p0, Landroid/window/RemoteTransition;->mFlags:I

    return-object p0
.end method

.method public blacklist setRemoteTransition(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;
    .locals 3

    iput-object p1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteTransition { remoteTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debugName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flags ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/RemoteTransition;->mFlags:I

    invoke-static {v2}, Landroid/window/RemoteTransition;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :cond_2
    iget-object v1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/window/RemoteTransition;->mDebugName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/window/RemoteTransition;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    return-void
.end method

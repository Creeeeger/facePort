.class public final Landroid/media/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INDEX_NOT_SET:I = -0x64

.field private static final blacklist TAG:Ljava/lang/String; = "VolumeInfo"

.field private static blacklist sDefaultVolumeInfo:Landroid/media/VolumeInfo;

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mHasMuteCommand:Z

.field private final blacklist mIsMuted:Z

.field private final blacklist mMaxVolIndex:I

.field private final blacklist mMinVolIndex:I

.field private final blacklist mStreamType:I

.field private final blacklist mUsesStreamType:Z

.field private final blacklist mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

.field private final blacklist mVolIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasMuteCommand(Landroid/media/VolumeInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMuted(Landroid/media/VolumeInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxVolIndex(Landroid/media/VolumeInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinVolIndex(Landroid/media/VolumeInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamType(Landroid/media/VolumeInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsesStreamType(Landroid/media/VolumeInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolGroup(Landroid/media/VolumeInfo;)Landroid/media/audiopolicy/AudioVolumeGroup;
    .locals 0

    iget-object p0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolIndex(Landroid/media/VolumeInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/VolumeInfo$1;

    invoke-direct {v0}, Landroid/media/VolumeInfo$1;-><init>()V

    sput-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioVolumeGroup;

    iput-object v0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/VolumeInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/VolumeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZZIIILandroid/media/audiopolicy/AudioVolumeGroup;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    iput-boolean p2, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    iput-boolean p3, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    iput p4, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    iput p5, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    iput p6, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    iput-object p7, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    iput p8, p0, Landroid/media/VolumeInfo;->mStreamType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZIIILandroid/media/audiopolicy/AudioVolumeGroup;ILandroid/media/VolumeInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeInfo;-><init>(ZZZIIILandroid/media/audiopolicy/AudioVolumeGroup;I)V

    return-void
.end method

.method public static whitelist getDefaultVolumeInfo()Landroid/media/VolumeInfo;
    .locals 3

    sget-object v0, Landroid/media/VolumeInfo;->sService:Landroid/media/IAudioService;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/VolumeInfo;->sService:Landroid/media/IAudioService;

    :cond_0
    sget-object v0, Landroid/media/VolumeInfo;->sDefaultVolumeInfo:Landroid/media/VolumeInfo;

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Landroid/media/VolumeInfo;->sService:Landroid/media/IAudioService;

    invoke-interface {v0}, Landroid/media/IAudioService;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeInfo;->sDefaultVolumeInfo:Landroid/media/VolumeInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VolumeInfo"

    const-string v2, "Error calling getDefaultVolumeInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/media/VolumeInfo$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/media/VolumeInfo;->sDefaultVolumeInfo:Landroid/media/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/VolumeInfo;

    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    iget-boolean v4, v2, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeInfo;->mStreamType:I

    iget v4, v2, Landroid/media/VolumeInfo;->mStreamType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    iget-boolean v4, v2, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    iget-boolean v4, v2, Landroid/media/VolumeInfo;->mIsMuted:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    iget v4, v2, Landroid/media/VolumeInfo;->mVolIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    iget v4, v2, Landroid/media/VolumeInfo;->mMinVolIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    iget v4, v2, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    iget-object v4, v2, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getMaxVolumeIndex()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    return v0
.end method

.method public whitelist getMinVolumeIndex()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    return v0
.end method

.method public whitelist getStreamType()I
    .locals 2

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VolumeInfo doesn\'t use stream types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVolumeGroup()Landroid/media/audiopolicy/AudioVolumeGroup;
    .locals 2

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VolumeInfo doesn\'t use AudioVolumeGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVolumeIndex()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    return v0
.end method

.method public whitelist hasMuteCommand()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    return v0
.end method

.method public whitelist hasStreamType()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    return v0
.end method

.method public whitelist hasVolumeGroup()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isMuted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " volGroup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " muted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "[no mute cmd]"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    const-string v3, ""

    const/16 v4, -0x64

    if-eq v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " volIndex:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    if-eq v2, v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " min:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    if-eq v2, v4, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " max:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method

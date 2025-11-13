.class public final Landroid/media/tv/TunedInfo;
.super Ljava/lang/Object;
.source "TunedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TunedInfo$AppType;
    }
.end annotation


# static fields
.field public static final whitelist APP_TAG_SELF:I = 0x0

.field public static final whitelist APP_TYPE_NON_SYSTEM:I = 0x3

.field public static final whitelist APP_TYPE_SELF:I = 0x1

.field public static final whitelist APP_TYPE_SYSTEM:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist TAG:Ljava/lang/String; = "TunedInfo"


# instance fields
.field private final blacklist mAppTag:I

.field private final blacklist mAppType:I

.field private final blacklist mChannelUri:Landroid/net/Uri;

.field private final blacklist mInputId:Ljava/lang/String;

.field private final blacklist mIsMainSession:Z

.field private final blacklist mIsRecordingSession:Z

.field private final blacklist mIsVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TunedInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TunedInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TunedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TunedInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TunedInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/net/Uri;ZZZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    iput-boolean p3, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    iput-boolean p4, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    iput-boolean p5, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    iput p6, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    iput p7, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/media/tv/TunedInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/tv/TunedInfo;

    iget-object v2, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/tv/TunedInfo;->getInputId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    iget-boolean v3, v0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    iget-boolean v3, v0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    iget-boolean v3, v0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    iget v3, v0, Landroid/media/tv/TunedInfo;->mAppType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    iget v3, v0, Landroid/media/tv/TunedInfo;->mAppTag:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public whitelist getAppTag()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    return v0
.end method

.method public whitelist getAppType()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    return v0
.end method

.method public whitelist getChannelUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getInputId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isMainSession()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    return v0
.end method

.method public whitelist isRecordingSession()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    return v0
.end method

.method public whitelist isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inputID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";channelUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isMainSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

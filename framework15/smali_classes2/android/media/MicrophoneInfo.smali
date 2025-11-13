.class public final Landroid/media/MicrophoneInfo;
.super Ljava/lang/Object;
.source "MicrophoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MicrophoneInfo$Coordinate3F;,
        Landroid/media/MicrophoneInfo$MicrophoneDirectionality;,
        Landroid/media/MicrophoneInfo$MicrophoneLocation;
    }
.end annotation


# static fields
.field public static final whitelist CHANNEL_MAPPING_DIRECT:I = 0x1

.field public static final whitelist CHANNEL_MAPPING_PROCESSED:I = 0x2

.field public static final whitelist DIRECTIONALITY_BI_DIRECTIONAL:I = 0x2

.field public static final whitelist DIRECTIONALITY_CARDIOID:I = 0x3

.field public static final whitelist DIRECTIONALITY_HYPER_CARDIOID:I = 0x4

.field public static final whitelist DIRECTIONALITY_OMNI:I = 0x1

.field public static final whitelist DIRECTIONALITY_SUPER_CARDIOID:I = 0x5

.field public static final whitelist DIRECTIONALITY_UNKNOWN:I = 0x0

.field public static final whitelist GROUP_UNKNOWN:I = -0x1

.field public static final whitelist INDEX_IN_THE_GROUP_UNKNOWN:I = -0x1

.field public static final whitelist LOCATION_MAINBODY:I = 0x1

.field public static final whitelist LOCATION_MAINBODY_MOVABLE:I = 0x2

.field public static final whitelist LOCATION_PERIPHERAL:I = 0x3

.field public static final whitelist LOCATION_UNKNOWN:I = 0x0

.field public static final whitelist ORIENTATION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

.field public static final whitelist POSITION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

.field public static final whitelist SENSITIVITY_UNKNOWN:F = -3.4028235E38f

.field public static final whitelist SPL_UNKNOWN:F = -3.4028235E38f


# instance fields
.field private greylist-max-o mAddress:Ljava/lang/String;

.field private greylist-max-o mChannelMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mDeviceId:Ljava/lang/String;

.field private greylist-max-o mDirectionality:I

.field private greylist-max-o mFrequencyResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mGroup:I

.field private greylist-max-o mIndexInTheGroup:I

.field private greylist-max-o mLocation:I

.field private greylist-max-o mMaxSpl:F

.field private greylist-max-o mMinSpl:F

.field private greylist-max-o mOrientation:Landroid/media/MicrophoneInfo$Coordinate3F;

.field private greylist-max-o mPortId:I

.field private greylist-max-o mPosition:Landroid/media/MicrophoneInfo$Coordinate3F;

.field private greylist-max-o mSensitivity:F

.field private greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/MicrophoneInfo$Coordinate3F;

    const v1, -0x800001

    invoke-direct {v0, v1, v1, v1}, Landroid/media/MicrophoneInfo$Coordinate3F;-><init>(FFF)V

    sput-object v0, Landroid/media/MicrophoneInfo;->POSITION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    new-instance v0, Landroid/media/MicrophoneInfo$Coordinate3F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/media/MicrophoneInfo$Coordinate3F;-><init>(FFF)V

    sput-object v0, Landroid/media/MicrophoneInfo;->ORIENTATION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    return-void
.end method

.method constructor greylist-max-r <init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/media/MicrophoneInfo$Coordinate3F;Landroid/media/MicrophoneInfo$Coordinate3F;Ljava/util/List;Ljava/util/List;FFFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "III",
            "Landroid/media/MicrophoneInfo$Coordinate3F;",
            "Landroid/media/MicrophoneInfo$Coordinate3F;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;FFFI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MicrophoneInfo;->mDeviceId:Ljava/lang/String;

    iput p2, p0, Landroid/media/MicrophoneInfo;->mType:I

    iput-object p3, p0, Landroid/media/MicrophoneInfo;->mAddress:Ljava/lang/String;

    iput p4, p0, Landroid/media/MicrophoneInfo;->mLocation:I

    iput p5, p0, Landroid/media/MicrophoneInfo;->mGroup:I

    iput p6, p0, Landroid/media/MicrophoneInfo;->mIndexInTheGroup:I

    iput-object p7, p0, Landroid/media/MicrophoneInfo;->mPosition:Landroid/media/MicrophoneInfo$Coordinate3F;

    iput-object p8, p0, Landroid/media/MicrophoneInfo;->mOrientation:Landroid/media/MicrophoneInfo$Coordinate3F;

    iput-object p9, p0, Landroid/media/MicrophoneInfo;->mFrequencyResponse:Ljava/util/List;

    iput-object p10, p0, Landroid/media/MicrophoneInfo;->mChannelMapping:Ljava/util/List;

    iput p11, p0, Landroid/media/MicrophoneInfo;->mSensitivity:F

    iput p12, p0, Landroid/media/MicrophoneInfo;->mMaxSpl:F

    iput p13, p0, Landroid/media/MicrophoneInfo;->mMinSpl:F

    iput p14, p0, Landroid/media/MicrophoneInfo;->mDirectionality:I

    return-void
.end method


# virtual methods
.method public whitelist getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChannelMapping()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mChannelMapping:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDirectionality()I
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mDirectionality:I

    return v0
.end method

.method public whitelist getFrequencyResponse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mFrequencyResponse:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getGroup()I
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mGroup:I

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mPortId:I

    return v0
.end method

.method public whitelist getIndexInTheGroup()I
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mIndexInTheGroup:I

    return v0
.end method

.method public greylist-max-o getInternalDeviceType()I
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mType:I

    return v0
.end method

.method public whitelist getLocation()I
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mLocation:I

    return v0
.end method

.method public whitelist getMaxSpl()F
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mMaxSpl:F

    return v0
.end method

.method public whitelist getMinSpl()F
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mMinSpl:F

    return v0
.end method

.method public whitelist getOrientation()Landroid/media/MicrophoneInfo$Coordinate3F;
    .locals 1

    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mOrientation:Landroid/media/MicrophoneInfo$Coordinate3F;

    return-object v0
.end method

.method public whitelist getPosition()Landroid/media/MicrophoneInfo$Coordinate3F;
    .locals 1

    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mPosition:Landroid/media/MicrophoneInfo$Coordinate3F;

    return-object v0
.end method

.method public whitelist getSensitivity()F
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mSensitivity:F

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/media/MicrophoneInfo;->mType:I

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o setChannelMapping(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MicrophoneInfo;->mChannelMapping:Ljava/util/List;

    return-void
.end method

.method public greylist-max-o setId(I)V
    .locals 0

    iput p1, p0, Landroid/media/MicrophoneInfo;->mPortId:I

    return-void
.end method

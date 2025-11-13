.class public final Landroid/hardware/radio/ProgramSelector;
.super Ljava/lang/Object;
.source "ProgramSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ProgramSelector$Identifier;,
        Landroid/hardware/radio/ProgramSelector$IdentifierType;,
        Landroid/hardware/radio/ProgramSelector$HdSubChannel;,
        Landroid/hardware/radio/ProgramSelector$ProgramType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramSelector;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_AMFM_FREQUENCY:I = 0x1

.field public static final whitelist IDENTIFIER_TYPE_DAB_DMB_SID_EXT:I = 0xe

.field public static final whitelist IDENTIFIER_TYPE_DAB_ENSEMBLE:I = 0x6

.field public static final whitelist IDENTIFIER_TYPE_DAB_FREQUENCY:I = 0x8

.field public static final whitelist IDENTIFIER_TYPE_DAB_SCID:I = 0x7

.field public static final whitelist IDENTIFIER_TYPE_DAB_SIDECC:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_DAB_SID_EXT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_DRMO_FREQUENCY:I = 0xa

.field public static final whitelist IDENTIFIER_TYPE_DRMO_MODULATION:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_DRMO_SERVICE_ID:I = 0x9

.field public static final whitelist IDENTIFIER_TYPE_HD_STATION_ID_EXT:I = 0x3

.field public static final whitelist IDENTIFIER_TYPE_HD_STATION_LOCATION:I = 0xf

.field public static final whitelist IDENTIFIER_TYPE_HD_STATION_NAME:I = 0x2714

.field public static final whitelist IDENTIFIER_TYPE_HD_SUBCHANNEL:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_INVALID:I = 0x0

.field public static final whitelist IDENTIFIER_TYPE_RDS_PI:I = 0x2

.field public static final whitelist IDENTIFIER_TYPE_SXM_CHANNEL:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_SXM_SERVICE_ID:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_END:I = 0x7cf

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_PRIMARY_END:I = 0x7cf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_PRIMARY_START:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IDENTIFIER_TYPE_VENDOR_START:I = 0x3e8

.field public static final whitelist PROGRAM_TYPE_AM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_AM_HD:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_DAB:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_DRMO:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_FM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_FM_HD:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_SXM:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_VENDOR_END:I = 0x7cf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRAM_TYPE_VENDOR_START:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUB_CHANNEL_HD_1:I = 0x1

.field public static final whitelist SUB_CHANNEL_HD_2:I = 0x2

.field public static final whitelist SUB_CHANNEL_HD_3:I = 0x4

.field public static final whitelist SUB_CHANNEL_HD_4:I = 0x8

.field public static final whitelist SUB_CHANNEL_HD_5:I = 0x10

.field public static final whitelist SUB_CHANNEL_HD_6:I = 0x20

.field public static final whitelist SUB_CHANNEL_HD_7:I = 0x40

.field public static final whitelist SUB_CHANNEL_HD_8:I = 0x80


# instance fields
.field private final greylist-max-o mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mProgramType:I

.field private final greylist-max-o mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mVendorIds:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/ProgramSelector$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramSelector$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p3, v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    :cond_0
    if-nez p4, :cond_1

    new-array p4, v0, [J

    :cond_1
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2

    iput p1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p4, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secondaryIds list must not contain nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secondaryIds list must not contain nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramSelector;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createAmFmSelector(II)Landroid/hardware/radio/ProgramSelector;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p0, v0, :cond_3

    const v0, 0xc350

    if-ge p1, v0, :cond_1

    if-gtz p2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move p0, v0

    goto :goto_2

    :cond_1
    if-gtz p2, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    move p0, v0

    :cond_3
    :goto_2
    if-eqz p0, :cond_5

    if-ne p0, v2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v4

    :goto_4
    if-eq p0, v2, :cond_7

    if-ne p0, v1, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_6

    :cond_7
    :goto_5
    move v2, v4

    :goto_6
    if-nez v0, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v4, :cond_8

    goto :goto_7

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown band: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_7
    if-ltz p2, :cond_f

    const/16 v5, 0x8

    if-gt p2, v5, :cond_f

    if-lez p2, :cond_b

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Subchannels are not supported for non-HD radio"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_8
    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramSelector;->isValidAmFmFrequency(ZI)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v0, :cond_c

    move v1, v4

    :cond_c
    new-instance v5, Landroid/hardware/radio/ProgramSelector$Identifier;

    int-to-long v6, p1

    invoke-direct {v5, v4, v6, v7}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    const/4 v6, 0x0

    if-lez p2, :cond_d

    new-array v4, v4, [Landroid/hardware/radio/ProgramSelector$Identifier;

    new-instance v7, Landroid/hardware/radio/ProgramSelector$Identifier;

    add-int/lit8 v8, p2, -0x1

    int-to-long v8, v8

    const/4 v10, 0x4

    invoke-direct {v7, v10, v8, v9}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    aput-object v7, v4, v3

    move-object v6, v4

    :cond_d
    new-instance v3, Landroid/hardware/radio/ProgramSelector;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v5, v6, v4}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v3

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provided value is not a valid AM/FM frequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid subchannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o isValidAmFmFrequency(ZI)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/16 v2, 0x96

    if-le p1, v2, :cond_0

    const/16 v2, 0x7530

    if-gt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const v2, 0xea60

    if-le p1, v2, :cond_2

    const v2, 0x1adb0

    if-ge p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$new$3(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$withSecondaryPreferred$1(ILandroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$withSecondaryPreferred$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1

    new-array v0, p0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/hardware/radio/ProgramSelector;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getAllIds(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v1
.end method

.method public whitelist getFirstId(I)J
    .locals 5

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public whitelist getProgramType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    return v0
.end method

.method public whitelist getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public whitelist getVendorIds()[J
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist strictEquals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/ProgramSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/ProgramSelector;

    iget-object v3, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v3, v3

    iget-object v4, v1, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v4, v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgramSelector(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist withSecondaryPreferred(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/radio/ProgramSelector;
    .locals 6

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {p1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    new-instance v2, Landroid/hardware/radio/ProgramSelector;

    iget v3, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    iget-object v4, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v5, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method

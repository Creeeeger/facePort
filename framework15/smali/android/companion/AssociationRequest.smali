.class public final Landroid/companion/AssociationRequest;
.super Ljava/lang/Object;
.source "AssociationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/AssociationRequest$Builder;,
        Landroid/companion/AssociationRequest$DeviceProfile;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/AssociationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_PROFILE_APP_STREAMING:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_APP_STREAMING"

.field public static final whitelist DEVICE_PROFILE_AUTOMOTIVE_PROJECTION:Ljava/lang/String; = "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

.field public static final whitelist DEVICE_PROFILE_COMPUTER:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_COMPUTER"

.field public static final whitelist DEVICE_PROFILE_GLASSES:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_GLASSES"

.field public static final whitelist DEVICE_PROFILE_NEARBY_DEVICE_STREAMING:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

.field public static final whitelist DEVICE_PROFILE_WATCH:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_WATCH"


# instance fields
.field private blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private final blacklist mCreationTime:J

.field private final greylist-max-o mDeviceFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDeviceProfilePrivilegesDescription:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mForceConfirmation:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSelfManaged:Z

.field private final greylist-max-o mSingleDevice:Z

.field private blacklist mSkipPrompt:Z

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/AssociationRequest$1;

    invoke-direct {v0}, Landroid/companion/AssociationRequest$1;-><init>()V

    sput-object v0, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_3

    move v4, v5

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-class v8, Landroid/companion/DeviceFilter;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-class v9, Landroid/companion/DeviceFilter;

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    and-int/lit8 v8, v2, 0x10

    if-nez v8, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    and-int/lit8 v10, v2, 0x20

    if-nez v10, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v10

    :goto_4
    and-int/lit8 v11, v2, 0x40

    if-nez v11, :cond_6

    const/4 v11, 0x0

    goto :goto_5

    :cond_6
    sget-object v11, Landroid/companion/AssociatedDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/companion/AssociatedDevice;

    :goto_5
    nop

    and-int/lit16 v12, v2, 0x80

    if-nez v12, :cond_7

    const/4 v12, 0x0

    goto :goto_6

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    and-int/lit16 v14, v2, 0x100

    if-nez v14, :cond_8

    const/4 v14, 0x0

    goto :goto_7

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v14

    :goto_7
    move-object/from16 v16, v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    iput-boolean v3, v0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    iput-object v5, v0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    const-class v15, Landroid/annotation/NonNull;

    iget-object v1, v0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    move/from16 v17, v2

    const/4 v2, 0x0

    invoke-static {v15, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v8, v0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    move-object/from16 v1, v16

    iput-object v1, v0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    iput-object v11, v0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iput-boolean v6, v0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    iput-boolean v7, v0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    iput-object v12, v0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    iput v13, v0, Landroid/companion/AssociationRequest;->mUserId:I

    const-class v2, Landroid/annotation/UserIdInt;

    iget v15, v0, Landroid/companion/AssociationRequest;->mUserId:I

    const/4 v1, 0x0

    invoke-static {v2, v1, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V

    iput-object v14, v0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    iput-wide v9, v0, Landroid/companion/AssociationRequest;->mCreationTime:J

    iput-boolean v4, v0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    return-void
.end method

.method private constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    iput-object p3, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    iput-object p4, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    iput-boolean p6, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    return-void
.end method

.method synthetic constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZLandroid/companion/AssociationRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

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

    check-cast v2, Landroid/companion/AssociationRequest;

    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/companion/AssociationRequest;->mUserId:I

    iget v4, v2, Landroid/companion/AssociationRequest;->mUserId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    iget-wide v5, v2, Landroid/companion/AssociationRequest;->mCreationTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAssociatedDevice()Landroid/companion/AssociatedDevice;
    .locals 1

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object v0
.end method

.method public blacklist getCreationTime()J
    .locals 2

    iget-wide v0, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    return-wide v0
.end method

.method public greylist-max-r getDeviceFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDeviceProfile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceProfilePrivilegesDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .locals 1

    iget v0, p0, Landroid/companion/AssociationRequest;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/companion/AssociationRequest;->mUserId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist isForceConfirmation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    return v0
.end method

.method public whitelist isSelfManaged()Z
    .locals 1

    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    return v0
.end method

.method public whitelist isSingleDevice()Z
    .locals 1

    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    return v0
.end method

.method public blacklist isSkipPrompt()Z
    .locals 1

    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    return v0
.end method

.method public blacklist setAssociatedDevice(Landroid/companion/AssociatedDevice;)V
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-void
.end method

.method public blacklist setDeviceProfilePrivilegesDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    return-void
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSkipPrompt(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    return-void
.end method

.method public blacklist setUserId(I)V
    .locals 0

    iput p1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssociationRequest { singleDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceFilters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", associatedDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selfManaged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceConfirmation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceProfilePrivilegesDescription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creationTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipPrompt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x100

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_b
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_c
    iget v1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    :cond_d
    iget-wide v1, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

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

.field public static final whitelist DEVICE_PROFILE_WATCH:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_WATCH"


# instance fields
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

.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mForceConfirmation:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSelfManaged:Z

.field private final greylist-max-o mSingleDevice:Z

.field private blacklist mSkipPrompt:Z

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 630
    new-instance v0, Landroid/companion/AssociationRequest$1;

    invoke-direct {v0}, Landroid/companion/AssociationRequest$1;-><init>()V

    sput-object v0, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 17
    .param p1, "in"    # Landroid/os/Parcel;

    .line 590
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 595
    .local v1, "flg":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 596
    .local v2, "singleDevice":Z
    :goto_0
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 597
    .local v5, "selfManaged":Z
    :goto_1
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    .line 598
    .local v6, "forceConfirmation":Z
    :goto_2
    and-int/lit16 v7, v1, 0x400

    if-eqz v7, :cond_3

    move v3, v4

    .line 599
    .local v3, "skipPrompt":Z
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v4, "deviceFilters":Ljava/util/List;, "Ljava/util/List<Landroid/companion/DeviceFilter<*>;>;"
    const-class v7, Landroid/companion/DeviceFilter;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-class v8, Landroid/companion/DeviceFilter;

    move-object/from16 v9, p1

    invoke-virtual {v9, v4, v7, v8}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 601
    and-int/lit8 v7, v1, 0x4

    const/4 v8, 0x0

    if-nez v7, :cond_4

    move-object v7, v8

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 602
    .local v7, "deviceProfile":Ljava/lang/String;
    :goto_3
    and-int/lit8 v10, v1, 0x8

    if-nez v10, :cond_5

    move-object v10, v8

    goto :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v10

    .line 603
    .local v10, "displayName":Ljava/lang/CharSequence;
    :goto_4
    and-int/lit8 v11, v1, 0x40

    if-nez v11, :cond_6

    move-object v11, v8

    goto :goto_5

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 604
    .local v11, "packageName":Ljava/lang/String;
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 605
    .local v12, "userId":I
    and-int/lit16 v13, v1, 0x100

    if-nez v13, :cond_7

    move-object v13, v8

    goto :goto_6

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 606
    .local v13, "deviceProfilePrivilegesDescription":Ljava/lang/String;
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 608
    .local v14, "creationTime":J
    iput-boolean v2, v0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    .line 609
    iput-object v4, v0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 610
    move/from16 v16, v1

    .end local v1    # "flg":I
    .local v16, "flg":I
    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v8, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 612
    iput-object v7, v0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    .line 613
    const-class v1, Landroid/companion/AssociationRequest$DeviceProfile;

    invoke-static {v1, v8, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    .line 615
    iput-object v10, v0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 616
    iput-boolean v5, v0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    .line 617
    iput-boolean v6, v0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    .line 618
    iput-object v11, v0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    .line 619
    iput v12, v0, Landroid/companion/AssociationRequest;->mUserId:I

    .line 620
    const-class v1, Landroid/annotation/UserIdInt;

    invoke-static {v1, v8, v12}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V

    .line 622
    iput-object v13, v0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    .line 623
    iput-wide v14, v0, Landroid/companion/AssociationRequest;->mCreationTime:J

    .line 624
    iput-boolean v3, v0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    .line 627
    return-void
.end method

.method private constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V
    .locals 2
    .param p1, "singleDevice"    # Z
    .param p3, "deviceProfile"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "selfManaged"    # Z
    .param p6, "forceConfirmation"    # Z
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

    .line 227
    .local p2, "deviceFilters":Ljava/util/List;, "Ljava/util/List<Landroid/companion/DeviceFilter<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    .line 229
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 230
    iput-object p3, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    .line 231
    iput-object p4, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 232
    iput-boolean p5, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    .line 233
    iput-boolean p6, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    .line 236
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZLandroid/companion/AssociationRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 649
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 518
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 519
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 521
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/companion/AssociationRequest;

    .line 523
    .local v2, "that":Landroid/companion/AssociationRequest;
    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 525
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    .line 526
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 527
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

    .line 530
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/companion/AssociationRequest;->mUserId:I

    iget v4, v2, Landroid/companion/AssociationRequest;->mUserId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    .line 532
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

    .line 523
    :goto_0
    return v0

    .line 519
    .end local v2    # "that":Landroid/companion/AssociationRequest;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getCreationTime()J
    .locals 2

    .line 476
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

    .line 308
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDeviceProfile()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceProfilePrivilegesDescription()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .locals 1

    .line 455
    iget v0, p0, Landroid/companion/AssociationRequest;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 543
    const/4 v0, 0x1

    .line 544
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 545
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 546
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 547
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 548
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 549
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 550
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 551
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/companion/AssociationRequest;->mUserId:I

    add-int/2addr v0, v2

    .line 552
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 553
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 554
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 555
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist isForceConfirmation()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    return v0
.end method

.method public whitelist isSelfManaged()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    return v0
.end method

.method public whitelist isSingleDevice()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    return v0
.end method

.method public blacklist isSkipPrompt()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    return v0
.end method

.method public blacklist setDeviceProfilePrivilegesDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 296
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 286
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public blacklist setSkipPrompt(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 301
    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    .line 302
    return-void
.end method

.method public blacklist setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 291
    iput p1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    .line 292
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 496
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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "flg":I
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 566
    :cond_0
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    .line 567
    :cond_1
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    .line 568
    :cond_2
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    .line 569
    :cond_3
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 570
    :cond_4
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 571
    :cond_5
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x40

    .line 572
    :cond_6
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    .line 573
    :cond_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 575
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    :cond_8
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 577
    :cond_9
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    :cond_a
    iget v1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    :cond_b
    iget-wide v1, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 581
    return-void
.end method

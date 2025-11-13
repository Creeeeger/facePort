.class public Landroid/content/pm/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INSTALL_LOCATION_AUTO:I = 0x0

.field public static final whitelist INSTALL_LOCATION_INTERNAL_ONLY:I = 0x1

.field public static final whitelist INSTALL_LOCATION_PREFER_EXTERNAL:I = 0x2

.field public static final greylist INSTALL_LOCATION_UNSPECIFIED:I = -0x1

.field public static final whitelist REQUESTED_PERMISSION_GRANTED:I = 0x2

.field public static final whitelist REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I = 0x10000

.field public static final greylist REQUESTED_PERMISSION_REQUIRED:I = 0x1


# instance fields
.field public whitelist activities:[Landroid/content/pm/ActivityInfo;

.field public whitelist applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public whitelist attributions:[Landroid/content/pm/Attribution;

.field public whitelist baseRevisionCode:I

.field public greylist-max-o compileSdkVersion:I

.field public greylist-max-o compileSdkVersionCodename:Ljava/lang/String;

.field public whitelist configPreferences:[Landroid/content/pm/ConfigurationInfo;

.field public greylist coreApp:Z

.field public whitelist featureGroups:[Landroid/content/pm/FeatureGroupInfo;

.field public whitelist firstInstallTime:J

.field public whitelist gids:[I

.field public whitelist installLocation:I

.field public whitelist instrumentation:[Landroid/content/pm/InstrumentationInfo;

.field public whitelist isApex:Z

.field public blacklist isSamsungThemeOverlay:Z

.field public greylist-max-o isStub:Z

.field public whitelist lastUpdateTime:J

.field public greylist-max-o mOverlayIsStatic:Z

.field public greylist-max-o overlayCategory:Ljava/lang/String;

.field public greylist-max-o overlayPriority:I

.field public greylist overlayTarget:Ljava/lang/String;

.field public whitelist packageName:Ljava/lang/String;

.field public whitelist permissions:[Landroid/content/pm/PermissionInfo;

.field public whitelist providers:[Landroid/content/pm/ProviderInfo;

.field public whitelist receivers:[Landroid/content/pm/ActivityInfo;

.field public whitelist reqFeatures:[Landroid/content/pm/FeatureInfo;

.field public whitelist requestedPermissions:[Ljava/lang/String;

.field public whitelist requestedPermissionsFlags:[I

.field public greylist-max-o requiredAccountType:Ljava/lang/String;

.field public greylist-max-o requiredForAllUsers:Z

.field public greylist-max-o restrictedAccountType:Ljava/lang/String;

.field public whitelist services:[Landroid/content/pm/ServiceInfo;

.field public whitelist sharedUserId:Ljava/lang/String;

.field public whitelist sharedUserLabel:I

.field public whitelist signatures:[Landroid/content/pm/Signature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist signingInfo:Landroid/content/pm/SigningInfo;

.field public whitelist splitNames:[Ljava/lang/String;

.field public whitelist splitRevisionCodes:[I

.field public blacklist targetOverlayableName:Ljava/lang/String;

.field public whitelist versionCode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist-max-o versionCodeMajor:I

.field public whitelist versionName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 555
    new-instance v0, Landroid/content/pm/PackageInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    .line 462
    return-void
.end method

.method private constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 458
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 580
    .local v2, "hasApp":I
    if-eqz v2, :cond_0

    .line 581
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 583
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->gids:[I

    .line 586
    sget-object v3, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/ActivityInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 587
    sget-object v3, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/ActivityInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 588
    sget-object v3, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/ServiceInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 589
    sget-object v3, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/ProviderInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 590
    sget-object v3, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/InstrumentationInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 591
    sget-object v3, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/PermissionInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 594
    sget-object v3, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/Signature;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 595
    sget-object v3, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/ConfigurationInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 596
    sget-object v3, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 597
    sget-object v3, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 598
    sget-object v3, Landroid/content/pm/Attribution;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/Attribution;

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 612
    .local v0, "hasSigningInfo":I
    if-eqz v0, :cond_4

    .line 613
    sget-object v1, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningInfo;

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 615
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    .line 623
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/PackageInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/PackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o composeLongVersionCode(II)J
    .locals 6
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .line 92
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLongVersionCode()J
    .locals 2

    .line 74
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o isOverlayPackage()Z
    .locals 1

    .line 469
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isStaticOverlayPackage()Z
    .locals 1

    .line 478
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist setLongVersionCode(J)V
    .locals 2
    .param p1, "longVersionCode"    # J

    .line 83
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 84
    long-to-int v0, p1

    iput v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 85
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 484
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    .line 497
    .local v0, "prevAllowSquashing":Z
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 499
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 502
    iget v1, p0, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 504
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 505
    iget v1, p0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    :goto_0
    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 513
    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 514
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->gids:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 515
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 516
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 517
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 518
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 519
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 520
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 521
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 523
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 524
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 525
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 526
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 527
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 528
    iget v1, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->isStub:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->coreApp:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 536
    iget v1, p0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 538
    iget v1, p0, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/SigningInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 544
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    :goto_1
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->isApex:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 547
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 550
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 553
    return-void
.end method

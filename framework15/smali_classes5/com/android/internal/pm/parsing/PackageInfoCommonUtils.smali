.class public Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;
.super Ljava/lang/Object;
.source "PackageInfoCommonUtils.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIcon()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    return-void
.end method

.method private static blacklist assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/internal/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static blacklist generate(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/PackageInfo;
    .locals 19

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const/4 v0, 0x0

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    invoke-static/range {p0 .. p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    move-object v10, v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    move-object v1, v6

    check-cast v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCode()I

    move-result v1

    iput v1, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object v1, v6

    check-cast v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCodeMajor()I

    move-result v1

    iput v1, v10, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v1

    iput v1, v10, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserLabelResourceId()I

    move-result v1

    iput v1, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    :cond_1
    iput-object v9, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstallLocation()I

    move-result v1

    iput v1, v10, Landroid/content/pm/PackageInfo;->installLocation:I

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    :cond_2
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequiredForAllUsers()Z

    move-result v1

    iput-boolean v1, v10, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    :cond_3
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRestrictedAccountType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequiredAccountType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayPriority()I

    move-result v1

    iput v1, v10, Landroid/content/pm/PackageInfo;->overlayPriority:I

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isOverlayIsStatic()Z

    move-result v1

    iput-boolean v1, v10, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersion()I

    move-result v1

    iput v1, v10, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersionCodeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v1

    iput-boolean v1, v10, Landroid/content/pm/PackageInfo;->isStub:Z

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCoreApp()Z

    move-result v1

    iput-boolean v1, v10, Landroid/content/pm/PackageInfo;->coreApp:Z

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v1

    iput-boolean v1, v10, Landroid/content/pm/PackageInfo;->isApex:Z

    const-wide/16 v3, 0x4000

    and-long/2addr v3, v7

    const-wide/16 v11, 0x0

    cmp-long v1, v3, v11

    if-eqz v1, :cond_6

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-array v3, v1, [Landroid/content/pm/ConfigurationInfo;

    iput-object v3, v10, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v3

    iget-object v4, v10, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_4
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    new-array v3, v1, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v10, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v3

    iget-object v4, v10, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_5
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    new-array v3, v1, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v3, v10, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v3

    iget-object v4, v10, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_6
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v7

    cmp-long v1, v3, v11

    if-eqz v1, :cond_a

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-lez v1, :cond_7

    new-array v3, v1, [Landroid/content/pm/PermissionInfo;

    iput-object v3, v10, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-static {v4, v7, v8}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    aput-object v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    new-array v4, v1, [I

    iput-object v4, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_a

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v14, v13, v4

    or-int/2addr v14, v2

    aput v14, v13, v4

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v13

    const/high16 v14, 0x10000

    and-int/2addr v13, v14

    if-eqz v13, :cond_8

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v13, v4

    or-int/2addr v14, v15

    aput v14, v13, v4

    :cond_8
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v13

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v14, v14, v4

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v14, v13, v4

    or-int/lit8 v14, v14, 0x4

    aput v14, v13, v4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    const-wide v3, 0x80000000L

    and-long/2addr v3, v7

    cmp-long v1, v3, v11

    if-eqz v1, :cond_e

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-lez v1, :cond_c

    new-array v3, v1, [Landroid/content/pm/Attribution;

    iput-object v3, v10, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_c

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    if-eqz v4, :cond_b

    iget-object v5, v10, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    new-instance v13, Landroid/content/pm/Attribution;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getLabel()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/content/pm/Attribution;-><init>(Ljava/lang/String;I)V

    aput-object v13, v5, v3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAttributionsUserVisible()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_3

    :cond_d
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    :goto_3
    goto :goto_4

    :cond_e
    iget-object v1, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    :goto_4
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v13

    const-wide/16 v3, 0x40

    and-long/2addr v3, v7

    cmp-long v1, v3, v11

    if-eqz v1, :cond_10

    invoke-virtual {v13}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    new-array v1, v2, [Landroid/content/pm/Signature;

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v13}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v2

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    goto :goto_5

    :cond_f
    invoke-virtual {v13}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v13}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [Landroid/content/pm/Signature;

    iput-object v2, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v13}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    iget-object v4, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_5
    const-wide/32 v1, 0x8000000

    and-long/2addr v1, v7

    cmp-long v1, v1, v11

    if-eqz v1, :cond_12

    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v13, v1, :cond_11

    new-instance v0, Landroid/content/pm/SigningInfo;

    invoke-direct {v0, v13}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_6

    :cond_11
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    :cond_12
    :goto_6
    const-wide/16 v0, 0x1

    and-long/2addr v0, v7

    cmp-long v0, v0, v11

    if-eqz v0, :cond_16

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v1, 0x0

    new-array v2, v0, [Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_15

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v5

    invoke-static {v6, v5, v7, v8}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_8

    :cond_13
    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v7, v8, v9}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateActivityInfo(Lcom/android/internal/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v2, v1

    move v1, v5

    :cond_14
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/ActivityInfo;

    iput-object v3, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_16
    const-wide/16 v0, 0x2

    and-long/2addr v0, v7

    cmp-long v0, v0, v11

    if-eqz v0, :cond_19

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v1, 0x0

    new-array v2, v0, [Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_18

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v5

    invoke-static {v6, v5, v7, v8}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v5

    if-eqz v5, :cond_17

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v7, v8, v9}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateActivityInfo(Lcom/android/internal/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v2, v1

    move v1, v5

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/ActivityInfo;

    iput-object v3, v10, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_19
    const-wide/16 v0, 0x4

    and-long/2addr v0, v7

    cmp-long v0, v0, v11

    if-eqz v0, :cond_1c

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v1, 0x0

    new-array v2, v0, [Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_1b

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedService;->isDirectBootAware()Z

    move-result v5

    invoke-static {v6, v5, v7, v8}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v5

    if-eqz v5, :cond_1a

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v7, v8, v9}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateServiceInfo(Lcom/android/internal/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v14

    aput-object v14, v2, v1

    move v1, v5

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1b
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/ServiceInfo;

    iput-object v3, v10, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_1c
    const-wide/16 v0, 0x8

    and-long/2addr v0, v7

    cmp-long v0, v0, v11

    if-eqz v0, :cond_1f

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1f

    const/4 v0, 0x0

    new-array v15, v14, [Landroid/content/pm/ProviderInfo;

    const/4 v1, 0x0

    move v5, v0

    move v4, v1

    :goto_b
    if-ge v4, v14, :cond_1e

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isDirectBootAware()Z

    move-result v0

    invoke-static {v6, v0, v7, v8}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v0

    if-eqz v0, :cond_1d

    add-int/lit8 v17, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    move/from16 v18, v4

    move-object v4, v9

    move v11, v5

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    aput-object v0, v15, v11

    move/from16 v5, v17

    goto :goto_c

    :cond_1d
    move/from16 v18, v4

    move v11, v5

    :goto_c
    add-int/lit8 v4, v18, 0x1

    const-wide/16 v11, 0x0

    goto :goto_b

    :cond_1e
    move/from16 v18, v4

    move v11, v5

    invoke-static {v15, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_1f
    const-wide/16 v0, 0x10

    and-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    new-array v1, v0, [Landroid/content/pm/InstrumentationInfo;

    iput-object v1, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_20

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    move/from16 v4, p3

    invoke-static {v3, v6, v7, v8, v4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/InstrumentationInfo;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_20
    move/from16 v4, p3

    goto :goto_e

    :cond_21
    move/from16 v4, p3

    goto :goto_e

    :cond_22
    move/from16 v4, p3

    :goto_e
    return-object v10
.end method

.method private static blacklist generateActivityInfo(Lcom/android/internal/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getAttributionTags()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :goto_1
    iput-object p3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    return-object v1
.end method

.method private static blacklist generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/ApplicationInfo;
    .locals 5

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;J)V

    invoke-static {v0, p0, p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_0
    const-wide/16 v1, 0x400

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    :goto_0
    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private static blacklist generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/InstrumentationInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v0

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    :goto_2
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    invoke-static {v1, p1, p4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V

    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_4

    :cond_4
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    :goto_4
    return-object v1
.end method

.method private static blacklist generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    :goto_1
    return-object v1
.end method

.method private static blacklist generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParsing"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p2, p3, p5}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    :cond_1
    new-instance v1, Landroid/content/pm/ProviderInfo;

    invoke-direct {v1}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/os/PatternMatcher;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/PatternMatcher;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object v2

    new-array v3, v3, [Landroid/content/pm/PathPermission;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PathPermission;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const-wide/16 v2, 0x800

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :cond_2
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    :cond_4
    iput-object p4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    return-object v1
.end method

.method private static blacklist generateServiceInfo(Lcom/android/internal/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    iput-object p3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    :cond_2
    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    return-object v1
.end method

.method private static blacklist initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v6, v7, v8, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v6, -0x2

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v7, v8, v9, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private static blacklist initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v6, v7, v8, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v6, -0x2

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v7, v8, v9, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private static blacklist isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z
    .locals 8

    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isSystem()Z

    move-result v0

    const-wide/32 v1, 0x100000

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-static {v2, p2, p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->reportIfDebug(ZJ)Z

    move-result v1

    return v1

    :cond_0
    const-wide/32 v5, 0x40000

    and-long/2addr v5, p2

    cmp-long v1, v5, v3

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-wide/32 v6, 0x80000

    and-long/2addr v6, p2

    cmp-long v3, v6, v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v2, v5

    :cond_4
    invoke-static {v2, p2, p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->reportIfDebug(ZJ)Z

    move-result v2

    return v2
.end method

.method private static blacklist reportIfDebug(ZJ)Z
    .locals 0

    return p0
.end method

.method private static blacklist updateApplicationInfo(Landroid/content/pm/ApplicationInfo;J)V
    .locals 6

    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_0
    const-wide/16 v4, 0x400

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    :cond_1
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    :cond_3
    const-string v0, ":complete"

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    return-void
.end method

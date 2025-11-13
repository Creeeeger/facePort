.class public Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
.super Ljava/lang/Object;
.source "CompatChangeablePackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/CompatChangeablePackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist mHasGameCategory:Z

.field blacklist mHasLauncherActivity:Z

.field blacklist mIsActivityEmbeddingSplitsEnabled:Z

.field blacklist mIsMinAspectRatioOverrideDisallowed:Z

.field blacklist mIsOrientationOverrideDisallowed:Z

.field blacklist mIsResizeableActivityOverrideDisallowed:Z

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mUid:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mUid:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/core/CompatChangeablePackageInfo;
    .locals 11

    new-instance v10, Lcom/samsung/android/core/CompatChangeablePackageInfo;

    iget-object v1, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mUid:I

    iget-boolean v3, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mHasLauncherActivity:Z

    iget-boolean v4, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mHasGameCategory:Z

    iget-boolean v5, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mIsResizeableActivityOverrideDisallowed:Z

    iget-boolean v6, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mIsOrientationOverrideDisallowed:Z

    iget-boolean v7, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mIsMinAspectRatioOverrideDisallowed:Z

    iget-boolean v8, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mIsActivityEmbeddingSplitsEnabled:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/core/CompatChangeablePackageInfo;-><init>(Ljava/lang/String;IZZZZZZLcom/samsung/android/core/CompatChangeablePackageInfo-IA;)V

    return-object v10
.end method

.method public blacklist setHasGameCategory(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mHasGameCategory:Z

    return-object p0
.end method

.method public blacklist setHasLauncherActivity(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mHasLauncherActivity:Z

    return-object p0
.end method

.method public blacklist setIsActivityEmbeddingSplitsEnabled(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mIsActivityEmbeddingSplitsEnabled:Z

    return-object p0
.end method

.method public blacklist setIsMinAspectRatioOverrideDisallowed(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mIsMinAspectRatioOverrideDisallowed:Z

    return-object p0
.end method

.method public blacklist setIsOrientationOverrideDisallowed(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mIsOrientationOverrideDisallowed:Z

    return-object p0
.end method

.method public blacklist setIsResizeableActivityOverrideDisallowed(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mIsResizeableActivityOverrideDisallowed:Z

    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setUid(I)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->mUid:I

    return-object p0
.end method

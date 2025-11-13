.class public Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;
.super Ljava/lang/Object;
.source "MultiResolutionChangeRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public blacklist mCallerInfo:Ljava/lang/String;

.field public blacklist mDensity:I

.field public blacklist mDisplayId:I

.field public blacklist mForcedHideCutout:I

.field public blacklist mHeight:I

.field public blacklist mSaveToSettings:Z

.field public blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mWidth:I

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mHeight:I

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mDensity:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mSaveToSettings:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mCallerInfo:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mForcedHideCutout:I

    iput p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    .locals 8

    new-instance v7, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    iget v1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mDisplayId:I

    iget v2, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mWidth:I

    iget v3, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mHeight:I

    iget v4, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mDensity:I

    iget-boolean v5, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mSaveToSettings:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;-><init>(IIIIZLcom/samsung/android/view/MultiResolutionChangeRequestInfo-IA;)V

    iget v1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mForcedHideCutout:I

    invoke-static {v0, v1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->-$$Nest$fputmForcedHideCutout(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;I)V

    return-object v0
.end method

.method public blacklist setCallerInfo(Ljava/lang/String;)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mCallerInfo:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDensity(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mDensity:I

    return-object p0
.end method

.method public blacklist setForcedHideCutout(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mForcedHideCutout:I

    return-object p0
.end method

.method public blacklist setHeight(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mHeight:I

    return-object p0
.end method

.method public blacklist setSaveToSettings(Z)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mSaveToSettings:Z

    return-object p0
.end method

.method public blacklist setWidth(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->mWidth:I

    return-object p0
.end method

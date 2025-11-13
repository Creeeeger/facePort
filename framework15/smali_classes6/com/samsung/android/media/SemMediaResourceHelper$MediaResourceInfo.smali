.class public final Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaResourceInfo"
.end annotation


# instance fields
.field private final blacklist mBitrate:I

.field private final blacklist mClientId:J

.field private final blacklist mCodecName:Ljava/lang/String;

.field private final blacklist mCodecState:I

.field private final blacklist mFramerate:I

.field private final blacklist mHeight:I

.field private final blacklist mIsEncoder:Z

.field private final blacklist mIsSecured:Z

.field private final blacklist mIsSoftware:Z

.field private final blacklist mPid:I

.field private final blacklist mResourceType:I

.field private final blacklist mWidth:I


# direct methods
.method constructor blacklist <init>(IZIJIIIIZZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mResourceType:I

    iput-boolean p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsSecured:Z

    iput p6, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mCodecState:I

    iput-wide p4, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mClientId:J

    iput p3, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mPid:I

    iput p7, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mWidth:I

    iput p8, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mHeight:I

    iput p9, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mFramerate:I

    iput-boolean p10, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsEncoder:Z

    iput-boolean p11, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsSoftware:Z

    iput-object p12, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mCodecName:Ljava/lang/String;

    iput p13, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mBitrate:I

    return-void
.end method


# virtual methods
.method public whitelist getClientId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mClientId:J

    return-wide v0
.end method

.method public blacklist getCodecName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mCodecName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCodecState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mCodecState:I

    return v0
.end method

.method public whitelist getPid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mPid:I

    return v0
.end method

.method public whitelist getResourceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mResourceType:I

    return v0
.end method

.method public blacklist getVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mBitrate:I

    return v0
.end method

.method public whitelist getVideoFrameRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mFramerate:I

    return v0
.end method

.method public whitelist getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mHeight:I

    return v0
.end method

.method public whitelist getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mWidth:I

    return v0
.end method

.method public whitelist isEncoder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsEncoder:Z

    return v0
.end method

.method public whitelist isSecured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsSecured:Z

    return v0
.end method

.method public blacklist isSoftware()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->mIsSoftware:Z

    return v0
.end method

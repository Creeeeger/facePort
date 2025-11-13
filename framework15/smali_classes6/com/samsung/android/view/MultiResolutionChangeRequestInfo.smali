.class public Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
.super Ljava/lang/Object;
.source "MultiResolutionChangeRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCallerInfo:Ljava/lang/String;

.field private blacklist mDensity:I

.field private blacklist mDisplayId:I

.field private blacklist mForcedHideCutout:I

.field private blacklist mHeight:I

.field private blacklist mSaveToSettings:Z

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmForcedHideCutout(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    return-void
.end method

.method private constructor blacklist <init>(IIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    iput p1, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDisplayId:I

    iput p2, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mWidth:I

    iput p3, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mHeight:I

    iput p4, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDensity:I

    iput-boolean p5, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mSaveToSettings:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIZLcom/samsung/android/view/MultiResolutionChangeRequestInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;-><init>(IIIIZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mCallerInfo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDensity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDensity:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDisplayId:I

    return v0
.end method

.method public blacklist getForcedHideCutout()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mHeight:I

    return v0
.end method

.method public blacklist getSaveToSettings()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mSaveToSettings:Z

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mWidth:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDensity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mSaveToSettings:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mCallerInfo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mSaveToSettings:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mCallerInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->mForcedHideCutout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

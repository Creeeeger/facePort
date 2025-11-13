.class public Landroid/window/ScreenCapture$CaptureArgs;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$CaptureArgs$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ScreenCapture$CaptureArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mAllowProtected:Z

.field public final blacklist mCaptureSecureLayers:Z

.field final blacklist mExcludeLayers:[Landroid/view/SurfaceControl;

.field public final blacklist mFrameScaleX:F

.field public final blacklist mFrameScaleY:F

.field public final blacklist mGrayscale:Z

.field public final blacklist mHintForSeamlessTransition:Z

.field public final blacklist mIsScreenShotBySystem:Z

.field public final blacklist mPixelFormat:I

.field public final blacklist mSourceCrop:Landroid/graphics/Rect;

.field public final blacklist mUid:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/ScreenCapture$CaptureArgs$1;

    invoke-direct {v0}, Landroid/window/ScreenCapture$CaptureArgs$1;-><init>()V

    sput-object v0, Landroid/window/ScreenCapture$CaptureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mPixelFormat:I

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureSecureLayers:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mAllowProtected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mUid:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mGrayscale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [Landroid/view/SurfaceControl;

    iput-object v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mHintForSeamlessTransition:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mIsScreenShotBySystem:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ScreenCapture$CaptureArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
            "+",
            "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmPixelFormat(Landroid/window/ScreenCapture$CaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mPixelFormat:I

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmSourceCrop(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleX(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleX:F

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleY(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleY:F

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmCaptureSecureLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureSecureLayers:Z

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmAllowProtected(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mAllowProtected:Z

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmUid(Landroid/window/ScreenCapture$CaptureArgs$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mUid:J

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmGrayscale(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mGrayscale:Z

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmHintForSeamlessTransition(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mHintForSeamlessTransition:Z

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmIsScreenShotBySystem(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mIsScreenShotBySystem:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;Landroid/window/ScreenCapture$CaptureArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;)V

    return-void
.end method

.method private blacklist getNativeExcludeLayers()[J
    .locals 4

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    aget-object v2, v2, v1

    iget-wide v2, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist release()V
    .locals 4

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mPixelFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureSecureLayers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mAllowProtected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mGrayscale:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mHintForSeamlessTransition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mIsScreenShotBySystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

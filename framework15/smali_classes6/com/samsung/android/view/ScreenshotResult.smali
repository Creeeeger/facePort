.class public Lcom/samsung/android/view/ScreenshotResult;
.super Ljava/lang/Object;
.source "ScreenshotResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/ScreenshotResult$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/view/ScreenshotResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FAIL_REASON_EMPTY_BITMAP:I = 0x8

.field public static final blacklist FAIL_REASON_INVALID_DEFAULT_TASK_DISPLAY_AREA:I = 0x4

.field public static final blacklist FAIL_REASON_INVALID_DISPLAY:I = 0x1

.field public static final blacklist FAIL_REASON_INVALID_SYSTEM_WINDOW:I = 0x2

.field public static final blacklist FAIL_REASON_SECURE_POLICY_BY_MDM:I = 0x20

.field public static final blacklist FAIL_REASON_SECURE_POLICY_BY_SECURE_FLAGS:I = 0x10


# instance fields
.field private blacklist mCapturedBitmap:Landroid/graphics/Bitmap;

.field private blacklist mFailedReason:I

.field private blacklist mSecuredWindowName:Ljava/lang/String;

.field private blacklist mTargetWindowName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/view/ScreenshotResult$1;

    invoke-direct {v0}, Lcom/samsung/android/view/ScreenshotResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/view/ScreenshotResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/samsung/android/view/ScreenshotResult;->mFailedReason:I

    iput-object p3, p0, Lcom/samsung/android/view/ScreenshotResult;->mTargetWindowName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/view/ScreenshotResult;->mSecuredWindowName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/view/ScreenshotResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/view/ScreenshotResult;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mFailedReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mTargetWindowName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mSecuredWindowName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/view/ScreenshotResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/view/ScreenshotResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCapturedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getFailedReason()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mFailedReason:I

    return v0
.end method

.method public blacklist getSecuredWindowName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mSecuredWindowName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTargetWindowName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mTargetWindowName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mFailedReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mTargetWindowName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/view/ScreenshotResult;->mSecuredWindowName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

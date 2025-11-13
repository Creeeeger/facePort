.class public Lcom/android/internal/util/ScreenshotRequest;
.super Ljava/lang/Object;
.source "ScreenshotRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ScreenshotRequest$HardwareBitmapBundler;,
        Lcom/android/internal/util/ScreenshotRequest$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/util/ScreenshotRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenshotRequest"


# instance fields
.field private final blacklist mBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mBoundsInScreen:Landroid/graphics/Rect;

.field private final blacklist mInsets:Landroid/graphics/Insets;

.field private final blacklist mSource:I

.field private final blacklist mTaskId:I

.field private final blacklist mTopComponent:Landroid/content/ComponentName;

.field private final blacklist mType:I

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/util/ScreenshotRequest$1;

    invoke-direct {v0}, Lcom/android/internal/util/ScreenshotRequest$1;-><init>()V

    sput-object v0, Lcom/android/internal/util/ScreenshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILandroid/content/ComponentName;IILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest;->mType:I

    iput p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mSource:I

    iput-object p3, p0, Lcom/android/internal/util/ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/internal/util/ScreenshotRequest;->mTaskId:I

    iput p5, p0, Lcom/android/internal/util/ScreenshotRequest;->mUserId:I

    iput-object p6, p0, Lcom/android/internal/util/ScreenshotRequest;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p7, p0, Lcom/android/internal/util/ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/android/internal/util/ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/content/ComponentName;IILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/internal/util/ScreenshotRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/util/ScreenshotRequest;-><init>(IILandroid/content/ComponentName;IILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mSource:I

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mUserId:I

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotRequest$HardwareBitmapBundler;->-$$Nest$smbundleToHardwareBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBoundsInScreen()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getSource()I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mSource:I

    return v0
.end method

.method public blacklist getTaskId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTaskId:I

    return v0
.end method

.method public blacklist getTopComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mType:I

    return v0
.end method

.method public blacklist getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mUserId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotRequest$HardwareBitmapBundler;->-$$Nest$smhardwareBitmapToBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method

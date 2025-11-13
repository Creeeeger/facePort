.class public Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;
.super Ljava/lang/Object;
.source "SmartClipDataExtractionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRACTION_MODE_DRAG_AND_DROP:I = 0x2

.field public static final blacklist EXTRACTION_MODE_FULL_SCREEN:I = 0x1

.field public static final blacklist EXTRACTION_MODE_NORMAL:I = 0x0

.field public static final blacklist EXTRACTION_MODE_SINGLE_WORD:I = 0x3


# instance fields
.field public blacklist mCropRect:Landroid/graphics/Rect;

.field public blacklist mExtractionMode:I

.field public blacklist mRequestId:I

.field public blacklist mTargetWindowLayer:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    iput p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;)V

    iput p3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

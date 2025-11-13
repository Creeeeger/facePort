.class public Landroid/view/SemBlurInfo;
.super Ljava/lang/Object;
.source "SemBlurInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SemBlurInfo$ColorCurve;,
        Landroid/view/SemBlurInfo$Builder;,
        Landroid/view/SemBlurInfo$BlurMode;
    }
.end annotation


# static fields
.field public static final whitelist BLUR_MODE_CANVAS:I = 0x2

.field public static final whitelist BLUR_MODE_WINDOW:I = 0x0

.field public static final whitelist BLUR_MODE_WINDOW_CAPTURED:I = 0x1

.field public static final blacklist COLOR_CURVE_PRESET_DIM_BACKGROUND_DARK:[F

.field public static final blacklist COLOR_CURVE_PRESET_DIM_BACKGROUND_LIGHT:[F

.field public static final blacklist COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_DARK:[F

.field public static final blacklist COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_LIGHT:[F

.field public static final blacklist COLOR_CURVE_PRESET_ULTRA_BACKGROUND_DARK:[F

.field public static final blacklist COLOR_CURVE_PRESET_ULTRA_BACKGROUND_LIGHT:[F

.field public static final blacklist COLOR_CURVE_TYPE_BEGIN:I = 0xb

.field public static final whitelist COLOR_CURVE_TYPE_DIM_BACKGROUND_DARK:I = 0xf

.field public static final whitelist COLOR_CURVE_TYPE_DIM_BACKGROUND_LIGHT:I = 0xc

.field public static final blacklist COLOR_CURVE_TYPE_END:I = 0x10

.field public static final whitelist COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_DARK:I = 0xe

.field public static final whitelist COLOR_CURVE_TYPE_SPATIAL_BACKGROUND_LIGHT:I = 0xb

.field public static final whitelist COLOR_CURVE_TYPE_ULTRA_BACKGROUND_DARK:I = 0x10

.field public static final whitelist COLOR_CURVE_TYPE_ULTRA_BACKGROUND_LIGHT:I = 0xd

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SemBlurInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemBlurInfo"


# instance fields
.field private final blacklist mBackgroundBlurColor:I

.field private final blacklist mBlurMode:I

.field private final blacklist mBlurRadius:I

.field private final blacklist mCanvasDownScale:I

.field private final blacklist mCapturedBitmap:Landroid/graphics/Bitmap;

.field private blacklist mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

.field private blacklist mCornerRadiusBL:F

.field private blacklist mCornerRadiusBR:F

.field private blacklist mCornerRadiusTL:F

.field private blacklist mCornerRadiusTR:F

.field private final blacklist mHasCapturedBitmap:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 87
    const/4 v0, 0x7

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_LIGHT:[F

    .line 92
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_DIM_BACKGROUND_LIGHT:[F

    .line 97
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_ULTRA_BACKGROUND_LIGHT:[F

    .line 102
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_SPATIAL_BACKGROUND_DARK:[F

    .line 107
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_DIM_BACKGROUND_DARK:[F

    .line 112
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Landroid/view/SemBlurInfo;->COLOR_CURVE_PRESET_ULTRA_BACKGROUND_DARK:[F

    .line 182
    new-instance v0, Landroid/view/SemBlurInfo$1;

    invoke-direct {v0}, Landroid/view/SemBlurInfo$1;-><init>()V

    sput-object v0, Landroid/view/SemBlurInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x43160000    # 150.0f
        0x0
        0x40a00000    # 5.0f
        0x0
        0x437f0000    # 255.0f
        0x3f800000    # 1.0f
        0x43540000    # 212.0f
    .end array-data

    :array_1
    .array-data 4
        0x43960000    # 300.0f
        0x0
        0x41600000    # 14.0f
        0x0
        0x437f0000    # 255.0f
        0x4312999a    # 146.6f
        0x43720000    # 242.0f
    .end array-data

    :array_2
    .array-data 4
        0x43ae0000    # 348.0f
        0x0
        0x41000000    # 8.0f
        0x0
        0x437f0000    # 255.0f
        0x42a20000    # 81.0f
        0x434f0000    # 207.0f
    .end array-data

    :array_3
    .array-data 4
        0x43160000    # 150.0f
        0x0
        0x41000000    # 8.0f
        0x0
        0x437f0000    # 255.0f
        0x40000000    # 2.0f
        0x43180000    # 152.0f
    .end array-data

    :array_4
    .array-data 4
        0x43960000    # 300.0f
        0x0
        0x41600000    # 14.0f
        0x0
        0x437f0000    # 255.0f
        0x4019999a    # 2.4f
        0x42bc6666    # 94.2f
    .end array-data

    :array_5
    .array-data 4
        0x43ae0000    # 348.0f
        0x0
        0x41000000    # 8.0f
        0x0
        0x437f0000    # 255.0f
        0x42240000    # 41.0f
        0x43270000    # 167.0f
    .end array-data
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Bitmap;IIFFFFI)V
    .locals 1
    .param p1, "blurMode"    # I
    .param p2, "capturedBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "blurRadius"    # I
    .param p4, "backgroundBlurColor"    # I
    .param p5, "cornerRadiusTL"    # F
    .param p6, "cornerRadiusTR"    # F
    .param p7, "cornerRadiusBL"    # F
    .param p8, "cornerRadiusBR"    # F
    .param p9, "scale"    # I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    .line 132
    iput-object p2, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 134
    if-nez p2, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    goto :goto_0

    .line 137
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    .line 140
    :goto_0
    iput p3, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    .line 141
    iput p4, p0, Landroid/view/SemBlurInfo;->mBackgroundBlurColor:I

    .line 142
    iput p5, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTL:F

    .line 143
    iput p6, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTR:F

    .line 144
    iput p7, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBL:F

    .line 145
    iput p8, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBR:F

    .line 146
    iput p9, p0, Landroid/view/SemBlurInfo;->mCanvasDownScale:I

    .line 147
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Bitmap;IIFFFFILandroid/view/SemBlurInfo$ColorCurve;)V
    .locals 0
    .param p1, "blurMode"    # I
    .param p2, "capturedBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "blurRadius"    # I
    .param p4, "backgroundBlurColor"    # I
    .param p5, "cornerRadiusTL"    # F
    .param p6, "cornerRadiusTR"    # F
    .param p7, "cornerRadiusBL"    # F
    .param p8, "cornerRadiusBR"    # F
    .param p9, "scale"    # I
    .param p10, "colorCurve"    # Landroid/view/SemBlurInfo$ColorCurve;

    .line 153
    invoke-direct/range {p0 .. p9}, Landroid/view/SemBlurInfo;-><init>(ILandroid/graphics/Bitmap;IIFFFFI)V

    .line 154
    iput-object p10, p0, Landroid/view/SemBlurInfo;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 155
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    .line 162
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mBackgroundBlurColor:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCanvasDownScale:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTL:F

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTR:F

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBL:F

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBR:F

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    .line 172
    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 175
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 177
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBackgroundBlurColor()I
    .locals 2

    .line 238
    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    if-nez v0, :cond_0

    .line 241
    iget v0, p0, Landroid/view/SemBlurInfo;->mBackgroundBlurColor:I

    return v0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to getBackgroundBlurColor, because of blurMode is not BLUR_MODE_WINDOW"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBackgroundBlurCornerRadius([F)V
    .locals 2
    .param p1, "outRadius"    # [F

    .line 247
    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    if-nez v0, :cond_1

    .line 251
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 255
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTL:F

    aput v1, p1, v0

    .line 256
    const/4 v0, 0x1

    iget v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTR:F

    aput v1, p1, v0

    .line 257
    const/4 v0, 0x2

    iget v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBL:F

    aput v1, p1, v0

    .line 258
    const/4 v0, 0x3

    iget v1, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBR:F

    aput v1, p1, v0

    .line 259
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outRadius must be an array of four integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to getBackgroundBlurCornerRadius, because of blurMode is not BLUR_MODE_WINDOW"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBlurMode()I
    .locals 1

    .line 227
    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    return v0
.end method

.method public blacklist getBlurRadius()I
    .locals 1

    .line 232
    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    return v0
.end method

.method public blacklist getCanvasDownScale()I
    .locals 2

    .line 273
    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 276
    iget v0, p0, Landroid/view/SemBlurInfo;->mCanvasDownScale:I

    return v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to getCanvasDownScale, because of blurMode is not BLUR_MODE_CANVAS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCapturedBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 264
    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to getCapturedBitmap, because of blurMode is not BLUR_MODE_WINDOW_CAPTURED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getColorCurve()Landroid/view/SemBlurInfo$ColorCurve;
    .locals 1

    .line 281
    iget-object v0, p0, Landroid/view/SemBlurInfo;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 210
    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Landroid/view/SemBlurInfo;->mBlurRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Landroid/view/SemBlurInfo;->mBackgroundBlurColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Landroid/view/SemBlurInfo;->mCanvasDownScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTL:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 215
    iget v0, p0, Landroid/view/SemBlurInfo;->mCornerRadiusTR:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 216
    iget v0, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBL:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 217
    iget v0, p0, Landroid/view/SemBlurInfo;->mCornerRadiusBR:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 218
    iget-boolean v0, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 220
    iget-boolean v0, p0, Landroid/view/SemBlurInfo;->mHasCapturedBitmap:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/view/SemBlurInfo;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 223
    :cond_0
    return-void
.end method

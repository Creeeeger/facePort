.class Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnhancedImageInfo"
.end annotation


# instance fields
.field public blacklist appliedEnhancements:[Z

.field public blacklist availableEnhancements:[Z

.field public blacklist ccMatrixLand:Landroid/graphics/Matrix;

.field public blacklist ccMatrixPort:Landroid/graphics/Matrix;

.field public blacklist cropPos:Landroid/graphics/Rect;

.field public blacklist currentEnhancementIndex:I

.field public blacklist enhancedBitmap:Landroid/graphics/Bitmap;

.field public blacklist enhancedThumbnail:Landroid/graphics/Bitmap;

.field public blacklist enhancedUri:Landroid/net/Uri;

.field public blacklist heightOffsetLandscape:I

.field public blacklist heightOffsetPortrait:I

.field public blacklist heightRatio:F

.field public blacklist heightscalefactor:F

.field public blacklist isPrivateImage:Z

.field public blacklist isSemShareOpenLogged:Z

.field public blacklist matrixLand:Landroid/graphics/Matrix;

.field public blacklist matrixPort:Landroid/graphics/Matrix;

.field public blacklist measuredHeight:I

.field public blacklist measuredWidth:I

.field public blacklist originalDrawableHeight:I

.field public blacklist originalDrawableWidth:I

.field public final blacklist position:I

.field public blacklist privateCategory:Ljava/lang/String;

.field public blacklist remasterVal:I

.field public blacklist scale:F

.field public blacklist scaleTypeRatio:F

.field public blacklist tiltVal:I

.field public final blacklist uri:Landroid/net/Uri;

.field public blacklist viewHeightLand:I

.field public blacklist viewHeightPortrait:I

.field public blacklist viewWidthLand:I

.field public blacklist viewWidthPortrait:I

.field public blacklist widthRatio:F


# direct methods
.method constructor blacklist <init>(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "position"    # I

    .line 13778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13766
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scale:F

    .line 13767
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    .line 13779
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    .line 13780
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->position:I

    .line 13781
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    .line 13782
    const/4 v0, 0x4

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->availableEnhancements:[Z

    .line 13783
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    .line 13784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->isSemShareOpenLogged:Z

    .line 13785
    return-void
.end method

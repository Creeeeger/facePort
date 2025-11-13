.class public Lcom/samsung/android/view/ScreenshotResult$Builder;
.super Ljava/lang/Object;
.source "ScreenshotResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/ScreenshotResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCapturedBitmap:Landroid/graphics/Bitmap;

.field private blacklist mFailedReason:I

.field private blacklist mSecuredWindowName:Ljava/lang/String;

.field private blacklist mTargetWindowName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/view/ScreenshotResult;
    .locals 7

    new-instance v6, Lcom/samsung/android/view/ScreenshotResult;

    iget-object v1, p0, Lcom/samsung/android/view/ScreenshotResult$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/view/ScreenshotResult$Builder;->mFailedReason:I

    iget-object v3, p0, Lcom/samsung/android/view/ScreenshotResult$Builder;->mTargetWindowName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/view/ScreenshotResult$Builder;->mSecuredWindowName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/ScreenshotResult;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/view/ScreenshotResult-IA;)V

    return-object v6
.end method

.method public blacklist setCapturedBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/view/ScreenshotResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/view/ScreenshotResult$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blacklist setFailedReason(I)Lcom/samsung/android/view/ScreenshotResult$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/view/ScreenshotResult$Builder;->mFailedReason:I

    return-object p0
.end method

.method public blacklist setSecuredWindowName(Ljava/lang/String;)Lcom/samsung/android/view/ScreenshotResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/view/ScreenshotResult$Builder;->mSecuredWindowName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTargetWindowName(Ljava/lang/String;)Lcom/samsung/android/view/ScreenshotResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/view/ScreenshotResult$Builder;->mTargetWindowName:Ljava/lang/String;

    return-object p0
.end method

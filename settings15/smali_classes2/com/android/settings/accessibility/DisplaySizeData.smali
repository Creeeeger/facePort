.class public final Lcom/android/settings/accessibility/DisplaySizeData;
.super Lcom/android/settings/accessibility/PreviewSizeData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeData;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {v0, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/DisplaySizeData;->mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;

    iget v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    if-gez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeData;->mDefaultValue:Ljava/lang/Number;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/PreviewSizeData;->mInitialIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget p1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensityForDefaultDisplay:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeData;->mDefaultValue:Ljava/lang/Number;

    iput v1, p0, Lcom/android/settings/accessibility/PreviewSizeData;->mInitialIndex:I

    iget-object p1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDisplayDensityValues:[I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    :goto_0
    return-void
.end method

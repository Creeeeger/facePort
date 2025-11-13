.class public final Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public cutoutString:Ljava/lang/String;

.field public cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

.field public isFrontCameraUsing:Z

.field public final isUDCModel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object p2, Lcom/android/systemui/statusbar/phone/CutoutType;->NO_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "config_mainBuiltInDisplayCutoutForUDC"

    const-string/jumbo v1, "string"

    const-string v2, "android"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p2, 0x1

    :catch_0
    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->loadDisplayCutout()V

    return-void
.end method


# virtual methods
.method public final getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->isRTL()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v1, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFitToActiveDisplay:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isFrontCameraUsing:Z

    if-eqz p0, :cond_3

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    :cond_3
    return-object v3
.end method

.method public final isMainDisplay()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUDCMainDisplay()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadDisplayCutout()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    const-string v1, "config_mainBuiltInDisplayCutoutForUDC"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const-string v0, "config_subBuiltInDisplayCutout"

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "config_mainBuiltInDisplayCutout"

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "string"

    const-string v4, "android"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->UDC:Lcom/android/systemui/statusbar/phone/CutoutType;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutString:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutString:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "@left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->LEFT_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutString:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "@right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->RIGHT_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->CENTER_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/phone/CutoutType;->NO_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    return-void
.end method

.class public final Lcom/android/systemui/biometrics/Utils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/Utils;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/Utils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final findFirstSensorProperties(Ljava/util/List;[I)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/biometrics/SensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_1
    check-cast v0, Landroid/hardware/biometrics/SensorPropertiesInternal;

    :cond_2
    return-object v0
.end method

.method public static final getCredentialType(Lcom/android/internal/widget/LockPatternUtils;I)Lcom/android/systemui/biometrics/shared/model/PromptKind;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 p1, 0x10000

    if-eq p0, p1, :cond_2

    const/high16 p1, 0x20000

    if-eq p0, p1, :cond_1

    const/high16 p1, 0x30000

    if-eq p0, p1, :cond_1

    const/high16 p1, 0x40000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x50000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x60000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x80000

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Password;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Password;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Password;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Password;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pattern;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pattern;

    :goto_0
    return-object p0
.end method

.method public static final getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;
    .locals 1

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :cond_2
    return-object v0
.end method

.method public static final isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

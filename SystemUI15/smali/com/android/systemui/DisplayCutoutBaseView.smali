.class public Lcom/android/systemui/DisplayCutoutBaseView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;


# static fields
.field public static final Companion:Lcom/android/systemui/DisplayCutoutBaseView$Companion;


# instance fields
.field public cameraProtectionProgress:F

.field public cameraProtectionStrokeWidth:I

.field public final cutoutPath:Landroid/graphics/Path;

.field public final cutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final displayInfo:Landroid/view/DisplayInfo;

.field public displayMode:Landroid/view/Display$Mode;

.field public displayRotation:I

.field public displayUniqueId:Ljava/lang/String;

.field public initialDisplayDensity:I

.field public initialDisplayWidth:I

.field public isCameraProtectionEnabled:Z

.field public final location:[I

.field public final paint:Landroid/graphics/Paint;

.field public final paintForCameraProtection:Landroid/graphics/Paint;

.field public pendingConfigChange:Z

.field public final protectionPath:Landroid/graphics/Path;

.field public final protectionPathOrig:Landroid/graphics/Path;

.field public final protectionRect:Landroid/graphics/RectF;

.field public final protectionRectOrig:Landroid/graphics/RectF;

.field protected final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public shouldDrawCutout:Z

.field public showProtection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/DisplayCutoutBaseView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/DisplayCutoutBaseView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/DisplayCutoutBaseView;->Companion:Lcom/android/systemui/DisplayCutoutBaseView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->isCameraProtectionEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionStrokeWidth:I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050014

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->isCameraProtectionEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionStrokeWidth:I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050014

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->isCameraProtectionEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionStrokeWidth:I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    return-void
.end method

.method public static synthetic getCameraProtectionProgress$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDisplayInfo$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProtectionPath$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProtectionRect$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public drawCutoutProtection(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public drawCutouts(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getCutoutPath()Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "DisplayCutoutBaseView:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldDrawCutout="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cutout="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cameraProtectionProgress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "protectionRect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protectionRectOrig="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public enableShowProtection(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->showProtection:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->showProtection:Z

    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getPhysicalPixelDisplaySizeRatio()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayUniqueId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateCutout()V

    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->onUpdate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->showProtection:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    neg-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->drawCutouts(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->showProtection:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->drawCutoutProtection(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onUpdate()V
    .locals 0

    return-void
.end method

.method public final updateConfiguration(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayMode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayMode:Landroid/view/Display$Mode;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayUniqueId:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayUniqueId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayUniqueId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isFillUDCDisplayCutoutEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayMode:Landroid/view/Display$Mode;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    if-ne v1, v2, :cond_8

    return-void

    :cond_8
    :goto_2
    iget-object v1, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, v0, Landroid/view/DisplayInfo;->rotation:I

    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateCutout()V

    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->onUpdate()V

    :cond_9
    return-void
.end method

.method public updateCutout()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->pendingConfigChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getCutoutPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateProtectionBoundingPath()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->pendingConfigChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->getPhysicalPixelDisplaySizeRatio()F

    move-result v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v5

    :goto_1
    if-eqz v6, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    sget-object v3, Lcom/android/systemui/DisplayCutoutBaseView;->Companion:Lcom/android/systemui/DisplayCutoutBaseView$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    if-eq v1, v5, :cond_7

    const/4 v5, 0x2

    if-eq v1, v5, :cond_6

    if-ne v1, v4, :cond_5

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown rotation: "

    invoke-static {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v1, v7

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    :cond_7
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v1, v7

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_9
    return-void
.end method

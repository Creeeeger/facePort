.class public Lcom/android/keyguard/KeyguardClockSwitch;
.super Landroid/widget/RelativeLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field mAnimateOnLayout:Z

.field mChildrenAreLaidOut:Z

.field public mClock:Lcom/android/systemui/plugins/clocks/ClockController;

.field mClockInAnim:Landroid/animation/AnimatorSet;

.field mClockOutAnim:Landroid/animation/AnimatorSet;

.field public mClockSwitchYAmount:I

.field public mDisplayedClockSize:Ljava/lang/Integer;

.field public mDrawAlpha:I

.field public mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

.field public mLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

.field public mSmartspace:Landroid/view/View;

.field public mSmartspaceTop:I

.field public mSmartspaceTopOffset:I

.field public mSplitShadeCentered:Z

.field public mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

.field mStatusAreaAnim:Landroid/animation/AnimatorSet;

.field public mStatusBarHeight:I

.field public mWeatherClockSmartspaceScaling:F

.field public mWeatherClockSmartspaceTranslateX:I

.field public mWeatherClockSmartspaceTranslateY:I

.field public screenOffsetYPadding:I


# direct methods
.method public static synthetic $r8$lambda$3P88DAVnKHu_rRbO61gA5cZYa4g(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/graphics/Canvas;)Lkotlin/Unit;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->screenOffsetYPadding:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTop:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mWeatherClockSmartspaceScaling:F

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mWeatherClockSmartspaceTranslateX:I

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mWeatherClockSmartspaceTranslateY:I

    const/16 p2, 0xff

    iput p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDrawAlpha:I

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarHeight:I

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSplitShadeCentered:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mAnimateOnLayout:Z

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method

.method public static getLargeClockRegion(Landroid/view/ViewGroup;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070616

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p0

    add-int/2addr v1, v0

    invoke-direct {v2, v3, v0, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public static getSmallClockRegion(Landroid/view/ViewGroup;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07141a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDrawAlpha:I

    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    sget-object v2, Lcom/android/keyguard/KeyguardClockFrame;->Companion:Lcom/android/keyguard/KeyguardClockFrame$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardClockFrame$Companion;->saveCanvasAlpha(Landroid/view/View;Landroid/graphics/Canvas;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "KeyguardClockSwitch:"

    const-string v1, "  mSmallClockFrame = "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mSmallClockFrame.alpha = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mLargeClockFrame = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mLargeClockFrame.alpha = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mStatusArea = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDisplayedClockSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onConfigChanged()V
    .locals 2

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07049e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07050c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x40280000    # 2.625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTopOffset:I

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    const v1, 0x7f07184f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mWeatherClockSmartspaceScaling:F

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071850

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mWeatherClockSmartspaceTranslateX:I

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071851

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mWeatherClockSmartspaceTranslateY:I

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07148f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarHeight:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateStatusArea(Z)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    const v0, 0x7f0a0657

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockFrame;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    const v0, 0x7f0a0658

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockFrame;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    const v0, 0x7f0a05c8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusAreaView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->onConfigChanged()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/systemui/plugins/clocks/ClockController;->getConfig()Lcom/android/systemui/plugins/clocks/ClockConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/plugins/clocks/ClockConfig;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DIGITAL_CLOCK_METRO"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClock:Lcom/android/systemui/plugins/clocks/ClockController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object p2

    iget-object p3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onColorPaletteChanged(Landroid/content/res/Resources;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;I)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspace:Landroid/view/View;

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTop:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-eq p2, p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspace:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTop:I

    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;I)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;I)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    return-void
.end method

.method public final onSetAlpha(I)Z
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDrawAlpha:I

    const/4 p0, 0x1

    return p0
.end method

.method public final updateClockTargetRegions()V
    .locals 6

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->getSmallClockRegion(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClock:Lcom/android/systemui/plugins/clocks/ClockController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTargetRegionChanged(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->getLargeClockRegion(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClock:Lcom/android/systemui/plugins/clocks/ClockController;

    instance-of v2, v1, Lcom/android/systemui/shared/clocks/DefaultClockController;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object p0, v1, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->onTargetRegionChanged(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->screenOffsetYPadding:I

    sub-int/2addr v4, p0

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTargetRegionChanged(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateClockViews(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v8, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const-string v9, "KeyguardClockSwitch"

    invoke-virtual {v5, v9, v7, v8, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v1, v8, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v2, v8, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iget-boolean v9, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    iput-boolean v9, v8, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v5, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iput-object v6, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    iput-object v6, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    iput-object v6, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v1, :cond_7

    iget-object v7, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    :cond_4
    iget-object v9, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTop()I

    move-result v9

    iget-object v10, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTopOffset:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz v10, :cond_6

    invoke-interface {v10}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getConfig()Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;->getHasCustomWeatherDataDisplay()Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mWeatherClockSmartspaceScaling:F

    iget v11, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mWeatherClockSmartspaceTranslateX:I

    int-to-float v11, v11

    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSplitShadeCentered:Z

    if-eqz v12, :cond_5

    const v12, 0x3fb33333    # 1.4f

    mul-float/2addr v11, v12

    :cond_5
    iget v12, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarHeight:I

    int-to-float v12, v12

    iget-object v13, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f19999a    # 0.6f

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget v13, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTop:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, v0, Lcom/android/keyguard/KeyguardClockSwitch;->screenOffsetYPadding:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    sub-float/2addr v12, v9

    iget v13, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mWeatherClockSmartspaceTranslateY:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    goto :goto_0

    :cond_6
    move v10, v5

    move v11, v6

    move v12, v11

    :goto_0
    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v6

    goto :goto_1

    :cond_7
    iget-object v8, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    iget v9, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    int-to-float v9, v9

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v9, v10

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move v11, v5

    move v10, v6

    move v12, v10

    move v13, v12

    :goto_1
    const/4 v14, 0x4

    if-nez v2, :cond_8

    invoke-virtual {v7, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    iput v12, v1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromClockDesign:F

    iget v2, v1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromAod:F

    add-float/2addr v2, v12

    iget v3, v1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromUnfold:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    iput v13, v1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateYFromClockDesign:F

    iget v2, v1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateYFromClockSize:F

    add-float/2addr v13, v2

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    iput v10, v1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateYFromClockSize:F

    iget v2, v1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateYFromClockDesign:F

    add-float/2addr v2, v10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void

    :cond_8
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0x85

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    sget-object v14, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    const/4 v14, 0x2

    new-array v15, v14, [Landroid/animation/Animator;

    sget-object v5, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    new-array v14, v3, [F

    aput v6, v14, v4

    invoke-static {v7, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v15, v4

    sget-object v14, Landroid/widget/RelativeLayout;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v3, [F

    aput v9, v6, v4

    invoke-static {v7, v14, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v15, v3

    invoke-virtual {v2, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/keyguard/KeyguardClockSwitch$1;

    invoke-direct {v6, v0, v7}, Lcom/android/keyguard/KeyguardClockSwitch$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xa7

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v7, v6, [Landroid/animation/Animator;

    new-array v6, v3, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v4

    invoke-static {v8, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v7, v4

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v6, v5, v4

    invoke-static {v8, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x85

    invoke-virtual {v2, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/keyguard/KeyguardClockSwitch$2;

    invoke-direct {v5, v0}, Lcom/android/keyguard/KeyguardClockSwitch$2;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_9

    const-wide/16 v5, 0x3c7

    goto :goto_2

    :cond_9
    const-wide/16 v5, 0x1d3

    :goto_2
    invoke-virtual {v2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x6

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    sget-object v6, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_SIZE:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    new-array v7, v3, [F

    aput v10, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    new-array v6, v3, [F

    aput v10, v6, v4

    invoke-static {v5, v14, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    sget-object v6, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    new-array v7, v3, [F

    aput v11, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    sget-object v6, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aput v11, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    sget-object v6, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_X_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    new-array v7, v3, [F

    aput v12, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v2, v6

    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    sget-object v6, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    new-array v3, v3, [F

    aput v13, v3, v4

    invoke-static {v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitch$3;

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardClockSwitch$3;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final updateStatusArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockViews(ZZ)V

    :cond_1
    return-void
.end method

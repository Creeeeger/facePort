.class public final Lcom/android/systemui/shared/clocks/AnimatableClockView;
.super Landroid/widget/TextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_LOGGER:Lcom/android/systemui/log/core/Logger;

.field public static final MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MOVE_LEFT_DELAYS:Ljava/util/List;

.field public static final MOVE_RIGHT_DELAYS:Ljava/util/List;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final chargeAnimationDelay:I

.field public descFormat:Ljava/lang/CharSequence;

.field public dozingColor:I

.field public final dozingWeightInternal:I

.field public format:Ljava/lang/CharSequence;

.field public final glyphFilter:Lkotlin/jvm/functions/Function2;

.field public final glyphOffsets:Ljava/util/List;

.field public hasCustomPositionUpdatedAnimation:Z

.field public final isAnimationEnabled:Z

.field public final isSingleLineInternal:Z

.field public lastUnconstrainedTextSize:F

.field public lockScreenColor:I

.field public final lockScreenWeightInternal:I

.field public logger:Lcom/android/systemui/log/core/Logger;

.field public migratedClocks:Z

.field public onTextAnimatorInitialized:Lkotlin/jvm/functions/Function1;

.field public textAnimator:Lcom/android/systemui/animation/TextAnimator;

.field public final textAnimatorFactory:Lkotlin/jvm/functions/Function2;

.field public final time:Ljava/util/Calendar;

.field public translateForCenterAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/clocks/AnimatableClockView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/log/core/Logger;

    new-instance v2, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    invoke-direct {v2, v3}, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;-><init>(Lcom/android/systemui/log/core/LogLevel;)V

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    sput-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->DEFAULT_LOGGER:Lcom/android/systemui/log/core/Logger;

    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_LEFT_DELAYS:Ljava/util/List;

    filled-new-array {v1, v0, v3, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_RIGHT_DELAYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/clocks/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/clocks/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/clocks/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->DEFAULT_LOGGER:Lcom/android/systemui/log/core/Logger;

    iput-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logger:Lcom/android/systemui/log/core/Logger;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lastUnconstrainedTextSize:F

    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;

    iput-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimatorFactory:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    sget-object v1, Lcom/android/systemui/customization/R$styleable;->AnimatableClockView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x64

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingWeightInternal:I

    const/16 v0, 0x12c

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenWeightInternal:I

    const/16 v0, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->chargeAnimationDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x20

    :try_start_1
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isSingleLineInternal:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p2, p3, p4, v0}, [Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphOffsets:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p2, p3, p4, p1}, [Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    new-instance p1, Lcom/android/systemui/shared/clocks/AnimatableClockView$glyphFilter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView$glyphFilter$1;-><init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphFilter:Lkotlin/jvm/functions/Function2;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/clocks/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic getTextAnimatorFactory$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTimeOverrideInMillis$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isAnimationEnabled$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final animateDoze(ZZ)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "animateDoze"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getDozingWeight()I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLockScreenWeight()I

    move-result v0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingColor:I

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    return-void
.end method

.method public final animateFoldAppear(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "animateFoldAppear"

    invoke-static {v0, v3, v2, v1, v2}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenWeightInternal:I

    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    iget v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingWeightInternal:I

    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    const-wide/16 v5, 0x258

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    alpha="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    measuredWidth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    const-string v1, "    measuredHeight="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isSingleLineInternal:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    singleLineInternal="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    currText="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    currTimeContextDesc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingWeightInternal:I

    const-string v1, "    dozingWeightInternal="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenWeightInternal:I

    const-string v1, "    lockScreenWeightInternal="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingColor:I

    const-string v1, "    dozingColor="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    const-string v1, "    lockScreenColor="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDigitFraction(FZI)F
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_LEFT_DELAYS:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_RIGHT_DELAYS:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_RIGHT_DELAYS:Ljava/util/List;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_LEFT_DELAYS:Ljava/util/List;

    :goto_0
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const p2, 0x3d072b02    # 0.033f

    mul-float/2addr p0, p2

    sget-object p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const p3, 0x3f66a7f0    # 0.901f

    add-float/2addr p3, p0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0, p3, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    check-cast p2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public final getDozingWeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingWeightInternal:I

    add-int/2addr p0, v1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingWeightInternal:I

    :goto_0
    return p0
.end method

.method public final getLockScreenWeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenWeightInternal:I

    add-int/2addr p0, v1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenWeightInternal:I

    :goto_0
    return p0
.end method

.method public final getLogger()Lcom/android/systemui/log/core/Logger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logger:Lcom/android/systemui/log/core/Logger;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->DEFAULT_LOGGER:Lcom/android/systemui/log/core/Logger;

    :cond_0
    return-object p0
.end method

.method public final invalidate()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "invalidate"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "onAttachedToWindow"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->translateForCenterAnimation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView$onDraw$1;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$onDraw$1;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    iget-object v0, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    iget-object v3, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/animation/TextInterpolator;->lerp(Landroid/graphics/Paint;Landroid/graphics/Paint;FLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_4

    check-cast v2, Lcom/android/systemui/animation/TextInterpolator$Line;

    iget-object v2, v2, Lcom/android/systemui/animation/TextInterpolator$Line;->runs:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/animation/TextInterpolator$Run;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, v4, Lcom/android/systemui/animation/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    iget-object v11, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaint:Landroid/text/TextPaint;

    move-object v6, p0

    move-object v7, p1

    move-object v8, v4

    move v10, v1

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/animation/TextInterpolator;->drawFontRun(Landroid/graphics/Canvas;Lcom/android/systemui/animation/TextInterpolator$Run;Lcom/android/systemui/animation/TextInterpolator$FontRun;ILandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw p0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    const-string v1, "onMeasure"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->migratedClocks:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isSingleLineInternal:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lastUnconstrainedTextSize:F

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-object p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {p2, v0, v4}, Lcom/android/systemui/animation/TextAnimator;->updateLayout(Landroid/text/Layout;F)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimatorFactory:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/shared/clocks/AnimatableClockView$onMeasure$2$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView$onMeasure$2$1;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;

    invoke-virtual {p2, v0, v4}, Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/animation/TextAnimator;

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->onTextAnimatorInitialized:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->onTextAnimatorInitialized:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->migratedClocks:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->hasCustomPositionUpdatedAnimation:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-le p2, p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->translateForCenterAnimation:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->translateForCenterAnimation:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->migratedClocks:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView$onTextChanged$1;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$onTextChanged$1;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public final refreshFormat(Z)V
    .locals 11

    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1303a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1303a6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sCacheKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "a"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-gt v7, v4, :cond_6

    if-nez v8, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    if-nez v8, :cond_4

    if-nez v9, :cond_3

    move v8, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v4, v5

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    sput-object v4, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView24:Ljava/lang/String;

    sput-object v3, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sCacheKey:Ljava/lang/String;

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isSingleLineInternal:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView24:Ljava/lang/String;

    goto :goto_5

    :cond_8
    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    const-string v0, "HH\nmm"

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    goto :goto_5

    :cond_a
    const-string v0, "hh\nmm"

    :goto_5
    iput-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->format:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshFormat$1;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshFormat$1;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->format:Ljava/lang/CharSequence;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-interface {v1, v5}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz p1, :cond_c

    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView24:Ljava/lang/String;

    goto :goto_6

    :cond_c
    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    :goto_6
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->descFormat:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshTime()V

    return-void
.end method

.method public final refreshTime()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->descFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->format:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshTime$1;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshTime$1;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    invoke-interface {v2, v4}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshTime$3;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshTime$3;

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3, v2, v6}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v6

    :goto_1
    invoke-interface {v2, v0}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/animation/TextAnimator;->TAG:Ljava/lang/String;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/animation/TextAnimator;->updateLayout(Landroid/text/Layout;F)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    const-string v2, "refreshTime: done updating textAnimator layout"

    invoke-static {v0, v2, v6, v1, v6}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object p0

    const-string v0, "refreshTime: after requestLayout"

    invoke-static {p0, v0, v6, v1, v6}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    iput p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lastUnconstrainedTextSize:F

    return-void
.end method

.method public final setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V
    .locals 12

    move-object v10, p0

    iget-object v11, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    if-eqz v11, :cond_1

    if-eqz p3, :cond_0

    iget-boolean v0, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-wide/from16 v4, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/animation/TextAnimator;->setTextStyle$default(Lcom/android/systemui/animation/TextAnimator;ILjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V

    iget-object v0, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphFilter:Lkotlin/jvm/functions/Function2;

    iget-object v1, v11, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    iput-object v0, v1, Lcom/android/systemui/animation/TextInterpolator;->glyphFilter:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_2

    new-instance v11, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    move-object/from16 v5, p4

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$2$1;-><init>(ILjava/lang/Integer;JLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;Lcom/android/systemui/shared/clocks/AnimatableClockView;)V

    iput-object v11, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->onTextAnimatorInitialized:Lkotlin/jvm/functions/Function1;

    :cond_2
    return-void
.end method

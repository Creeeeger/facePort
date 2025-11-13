.class public final Lcom/android/systemui/shared/clocks/DefaultClockController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/clocks/ClockController;


# instance fields
.field public final burmeseLineSpacing:F

.field public final burmeseNumerals:Ljava/lang/String;

.field public final clocks:Ljava/util/List;

.field public final config$delegate:Lkotlin/Lazy;

.field public final ctx:Landroid/content/Context;

.field public final defaultLineSpacing:F

.field public final events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

.field public final hasStepClockAnimation:Z

.field public final largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

.field public final migratedClocks:Z

.field public onSecondaryDisplay:Z

.field public final resources:Landroid/content/res/Resources;

.field public final smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/clocks/DefaultClockController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/clocks/DefaultClockController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/android/systemui/plugins/clocks/ClockSettings;ZZLcom/android/systemui/plugins/clocks/ClockMessageBuffers;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->resources:Landroid/content/res/Resources;

    iput-boolean p5, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->hasStepClockAnimation:Z

    iput-boolean p6, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->migratedClocks:Z

    const-string p5, "my"

    invoke-static {p5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p5

    invoke-static {p5}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p5

    const-wide/32 v0, 0x499602d2

    invoke-virtual {p5, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->burmeseNumerals:Ljava/lang/String;

    const p5, 0x7f07049d

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p5

    iput p5, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->burmeseLineSpacing:F

    const p5, 0x7f07049c

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->defaultLineSpacing:F

    new-instance p3, Lcom/android/systemui/shared/clocks/DefaultClockController$config$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$config$2;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->config$delegate:Lkotlin/Lazy;

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    const p5, 0x7f0d0095

    const/4 p6, 0x0

    invoke-virtual {p2, p5, p3, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getSeedColor()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->getSmallClockMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-direct {p1, p0, p5, v1, v2}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;Ljava/lang/Integer;Lcom/android/systemui/log/core/MessageBuffer;)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    new-instance p5, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    const v1, 0x7f0d0094

    invoke-virtual {p2, v1, p3, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getSeedColor()Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v0

    :goto_2
    if-eqz p7, :cond_3

    invoke-virtual {p7}, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->getLargeClockMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    :cond_3
    invoke-direct {p5, p0, p2, p3, v0}, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;Ljava/lang/Integer;Lcom/android/systemui/log/core/MessageBuffer;)V

    iput-object p5, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    iget-object p1, p1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    iget-object p2, p5, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    filled-new-array {p1, p2}, [Lcom/android/systemui/shared/clocks/AnimatableClockView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->onLocaleChanged(Ljava/util/Locale;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/android/systemui/plugins/clocks/ClockSettings;ZZLcom/android/systemui/plugins/clocks/ClockMessageBuffers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/shared/clocks/DefaultClockController;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/android/systemui/plugins/clocks/ClockSettings;ZZLcom/android/systemui/plugins/clocks/ClockMessageBuffers;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, "smallClock="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    iget-object v0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "largeClock="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getConfig()Lcom/android/systemui/plugins/clocks/ClockConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->config$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/clocks/ClockConfig;

    return-object p0
.end method

.method public final getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

    return-object p0
.end method

.method public final getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    return-object p0
.end method

.method public final getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    return-object p0
.end method

.method public final initialize(Landroid/content/res/Resources;FF)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->recomputePadding(Landroid/graphics/Rect;)V

    new-instance v1, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;

    iget-object v2, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-direct {v1, p0, v2, p2, p3}, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    iput-object v1, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    new-instance v2, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    iget-object v3, v1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-direct {v2, p0, v3, p2, p3}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    iput-object v2, v1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->onColorPaletteChanged(Landroid/content/res/Resources;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    iget-object p0, v1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->onTimeTick()V

    iget-object p0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->onTimeTick()V

    return-void
.end method

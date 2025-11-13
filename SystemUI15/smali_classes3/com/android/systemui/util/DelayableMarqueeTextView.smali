.class public final Lcom/android/systemui/util/DelayableMarqueeTextView;
.super Lcom/android/systemui/util/SafeMarqueeTextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/util/DelayableMarqueeTextView$Companion;

.field public static final DEFAULT_MARQUEE_DELAY:J = 0x7d0L


# instance fields
.field private final enableMarquee:Ljava/lang/Runnable;

.field private marqueeBlocked:Z

.field private marqueeDelay:J

.field private wantsMarquee:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/DelayableMarqueeTextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/DelayableMarqueeTextView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/DelayableMarqueeTextView;->Companion:Lcom/android/systemui/util/DelayableMarqueeTextView$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/DelayableMarqueeTextView;->$stable:I

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

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/DelayableMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/DelayableMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/DelayableMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeBlocked:Z

    new-instance v0, Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;-><init>(Lcom/android/systemui/util/DelayableMarqueeTextView;)V

    iput-object v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->enableMarquee:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/res/R$styleable;->DelayableMarqueeTextView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/DelayableMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getWantsMarquee$p(Lcom/android/systemui/util/DelayableMarqueeTextView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->wantsMarquee:Z

    return p0
.end method

.method public static final synthetic access$setMarqueeBlocked$p(Lcom/android/systemui/util/DelayableMarqueeTextView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeBlocked:Z

    return-void
.end method


# virtual methods
.method public final getMarqueeDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    return-wide v0
.end method

.method public final setMarqueeDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    return-void
.end method

.method public startMarquee()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->wantsMarquee:Z

    iget-boolean v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeBlocked:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->enableMarquee:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->enableMarquee:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    invoke-super {p0}, Lcom/android/systemui/util/SafeMarqueeTextView;->startMarquee()V

    return-void
.end method

.method public stopMarquee()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->enableMarquee:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->wantsMarquee:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeBlocked:Z

    invoke-super {p0}, Lcom/android/systemui/util/SafeMarqueeTextView;->stopMarquee()V

    return-void
.end method

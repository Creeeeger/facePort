.class public final Lcom/android/systemui/volume/util/SeekBarUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/util/SeekBarUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/util/SeekBarUtil;

    invoke-direct {v0}, Lcom/android/systemui/volume/util/SeekBarUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/util/SeekBarUtil;->INSTANCE:Lcom/android/systemui/volume/util/SeekBarUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final vibrateIfNeeded(Landroid/widget/SeekBar;II)V
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/util/SeekBarUtil;->INSTANCE:Lcom/android/systemui/volume/util/SeekBarUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    if-ne p2, p1, :cond_2

    :cond_1
    :goto_0
    const/16 p1, 0x29

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_2
    return-void
.end method

.class public Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DURATION_OF_CHILD_MEASURES:I = 0x5

.field public static final DURATION_OF_LAYOUT:I = 0x7

.field public static final DURATION_OF_MEASURES:I = 0x6

.field private static MAX_WORD:I = 0x19

.field public static final NUMBER_OF_CHILD_MEASURES:I = 0x4

.field public static final NUMBER_OF_CHILD_VIEWS:I = 0x3

.field public static final NUMBER_OF_EQUATIONS:I = 0x9

.field public static final NUMBER_OF_LAYOUTS:I = 0x1

.field public static final NUMBER_OF_ON_MEASURES:I = 0x2

.field public static final NUMBER_OF_SIMPLE_EQUATIONS:I = 0xa

.field public static final NUMBER_OF_VARIABLES:I = 0x8

.field private static final WORD_PAD:Ljava/lang/String;


# instance fields
.field mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mMetrics:Landroidx/constraintlayout/core/Metrics;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x19

    new-array v1, v1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->WORD_PAD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/Metrics;

    invoke-direct {v0}, Landroidx/constraintlayout/core/Metrics;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->attach(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/Metrics;

    invoke-direct {v0}, Landroidx/constraintlayout/core/Metrics;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-object p0, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->mVariables:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->mVariables:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->mEquations:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->mEquations:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->mSimpleEquations:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->mSimpleEquations:J

    iget p1, p0, Landroidx/constraintlayout/core/Metrics;->mNumberOfMeasures:I

    iput p1, v0, Landroidx/constraintlayout/core/Metrics;->mNumberOfMeasures:I

    iget p1, p0, Landroidx/constraintlayout/core/Metrics;->mNumberOfLayouts:I

    iput p1, v0, Landroidx/constraintlayout/core/Metrics;->mNumberOfLayouts:I

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->mMeasureDuration:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->mMeasureDuration:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->mChildCount:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->mChildCount:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->mMeasureCalls:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->mMeasureCalls:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measuresWidgetsDuration:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->measuresWidgetsDuration:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measuresLayoutDuration:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->measuresLayoutDuration:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->measures:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    iget-wide v1, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    iget-wide p0, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    iput-wide p0, v0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    return-void
.end method

.method private compare(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->getValue(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->getValue(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->geName(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->WORD_PAD:Ljava/lang/String;

    invoke-static {p2, v0, p0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sget v0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->MAX_WORD:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, " = "

    invoke-static {p0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "CL Perf: "

    invoke-static {p2, p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private compare(Ljava/text/DecimalFormat;Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->getValue(I)J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->fmt(Ljava/text/DecimalFormat;FI)Ljava/lang/String;

    move-result-object v0

    const-string v3, " -> "

    invoke-static {v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->getValue(I)J

    move-result-wide v3

    long-to-float p2, v3

    mul-float/2addr p2, v1

    invoke-direct {p0, p1, p2, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->fmt(Ljava/text/DecimalFormat;FI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ms"

    invoke-static {v0, p1, p2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->geName(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->WORD_PAD:Ljava/lang/String;

    invoke-static {p2, p3, p0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sget p3, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->MAX_WORD:I

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, " = "

    invoke-static {p0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "CL Perf: "

    invoke-static {p2, p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fmt(Ljava/text/DecimalFormat;FI)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/String;

    new-array v0, p3, [C

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private log(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->getValue(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->geName(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->WORD_PAD:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sget v1, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->MAX_WORD:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, " = "

    invoke-static {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CL Perf: "

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private log(Ljava/text/DecimalFormat;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->getValue(I)J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->fmt(Ljava/text/DecimalFormat;FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->geName(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->WORD_PAD:Ljava/lang/String;

    invoke-static {p2, v0, p0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sget v0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->MAX_WORD:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, " = "

    invoke-static {p0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "CL Perf: "

    invoke-static {p2, p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    new-instance p1, Ljava/text/DecimalFormat;

    const-string v1, "###.000"

    invoke-direct {p1, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(Ljava/text/DecimalFormat;I)Ljava/lang/String;

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(Ljava/text/DecimalFormat;I)Ljava/lang/String;

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(Ljava/text/DecimalFormat;I)Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(I)Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(I)Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(I)Ljava/lang/String;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(I)Ljava/lang/String;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(I)Ljava/lang/String;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(I)Ljava/lang/String;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(I)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attach(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->fillMetrics(Landroidx/constraintlayout/core/Metrics;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public clone()Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;-><init>(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->clone()Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;

    move-result-object p0

    return-object p0
.end method

.method public detach()V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->fillMetrics(Landroidx/constraintlayout/core/Metrics;)V

    :cond_0
    return-void
.end method

.method public geName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "SimpleEquations"

    return-object p0

    :pswitch_1
    const-string p0, "SolverEquations"

    return-object p0

    :pswitch_2
    const-string p0, "SolverVariables"

    return-object p0

    :pswitch_3
    const-string p0, "MeasuresLayoutDuration"

    return-object p0

    :pswitch_4
    const-string p0, "MeasureDuration"

    return-object p0

    :pswitch_5
    const-string p0, "MeasuresWidgetsDuration "

    return-object p0

    :pswitch_6
    const-string p0, "ChildrenMeasures"

    return-object p0

    :pswitch_7
    const-string p0, "ChildCount"

    return-object p0

    :pswitch_8
    const-string p0, "MeasureCalls"

    return-object p0

    :pswitch_9
    const-string p0, "NumberOfLayouts"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(I)J
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-wide/16 p0, 0x0

    return-wide p0

    :pswitch_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide p0, p0, Landroidx/constraintlayout/core/Metrics;->mSimpleEquations:J

    return-wide p0

    :pswitch_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide p0, p0, Landroidx/constraintlayout/core/Metrics;->mEquations:J

    return-wide p0

    :pswitch_2
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide p0, p0, Landroidx/constraintlayout/core/Metrics;->mVariables:J

    return-wide p0

    :pswitch_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide p0, p0, Landroidx/constraintlayout/core/Metrics;->measuresLayoutDuration:J

    return-wide p0

    :pswitch_4
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide p0, p0, Landroidx/constraintlayout/core/Metrics;->mMeasureDuration:J

    return-wide p0

    :pswitch_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide p0, p0, Landroidx/constraintlayout/core/Metrics;->measuresWidgetsDuration:J

    return-wide p0

    :pswitch_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget p0, p0, Landroidx/constraintlayout/core/Metrics;->mNumberOfMeasures:I

    int-to-long p0, p0

    return-wide p0

    :pswitch_7
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide p0, p0, Landroidx/constraintlayout/core/Metrics;->mChildCount:J

    return-wide p0

    :pswitch_8
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide p0, p0, Landroidx/constraintlayout/core/Metrics;->mMeasureCalls:J

    return-wide p0

    :pswitch_9
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget p0, p0, Landroidx/constraintlayout/core/Metrics;->mNumberOfLayouts:I

    int-to-long p0, p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logSummary(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(Ljava/lang/String;)V

    return-void
.end method

.method public logSummary(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "###.000"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Ljava/text/DecimalFormat;Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Ljava/text/DecimalFormat;Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Ljava/text/DecimalFormat;Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    const/4 p1, 0x4

    invoke-direct {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    const/16 p1, 0x9

    invoke-direct {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    const/16 p1, 0xa

    invoke-direct {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->compare(Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;I)Ljava/lang/String;

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStatistics;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    iget-object v2, p0, Landroidx/constraintlayout/core/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/core/Metrics;->mNumberOfMeasures:I

    iput v2, p0, Landroidx/constraintlayout/core/Metrics;->mNumberOfLayouts:I

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->measuresWidgetsDuration:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->measuresLayoutDuration:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->mChildCount:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->mMeasureDuration:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->mMeasureCalls:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->mVariables:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->mEquations:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->mSimpleEquations:J

    return-void
.end method

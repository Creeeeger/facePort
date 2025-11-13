.class Landroid/view/ViewTraversalTracingStrings;
.super Ljava/lang/Object;
.source "ViewTraversalTracingStrings.java"


# instance fields
.field public final blacklist classSimpleName:Ljava/lang/String;

.field public final blacklist onLayout:Ljava/lang/String;

.field public final blacklist onMeasure:Ljava/lang/String;

.field public final blacklist onMeasureBeforeLayout:Ljava/lang/String;

.field public final blacklist requestLayoutStacktracePrefix:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewTraversalTracingStrings;->classSimpleName:Ljava/lang/String;

    const-string/jumbo v1, "onMeasureBeforeLayout"

    invoke-direct {p0, v1, v0, p1}, Landroid/view/ViewTraversalTracingStrings;->getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewTraversalTracingStrings;->onMeasureBeforeLayout:Ljava/lang/String;

    const-string/jumbo v1, "onMeasure"

    invoke-direct {p0, v1, v0, p1}, Landroid/view/ViewTraversalTracingStrings;->getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewTraversalTracingStrings;->onMeasure:Ljava/lang/String;

    const-string/jumbo v1, "onLayout"

    invoke-direct {p0, v1, v0, p1}, Landroid/view/ViewTraversalTracingStrings;->getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewTraversalTracingStrings;->onLayout:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLayout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewTraversalTracingStrings;->requestLayoutStacktracePrefix:Ljava/lang/String;

    return-void
.end method

.method private blacklist getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Landroid/view/View;->appendId(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x7e

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class Landroid/widget/AbsListView$DifferentialFlingTarget;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DifferentialFlingTarget"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/AbsListView$DifferentialFlingTarget;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$DifferentialFlingTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$DifferentialFlingTarget;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public blacklist getScaledScrollFactor()F
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$DifferentialFlingTarget;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmVerticalScrollFactor(Landroid/widget/AbsListView;)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public blacklist startDifferentialMotionFling(F)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView$DifferentialFlingTarget;->stopDifferentialMotionFling()V

    iget-object v0, p0, Landroid/widget/AbsListView$DifferentialFlingTarget;->this$0:Landroid/widget/AbsListView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->fling(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stopDifferentialMotionFling()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$DifferentialFlingTarget;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$DifferentialFlingTarget;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_0
    return-void
.end method

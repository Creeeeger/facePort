.class public Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;
.super Ljava/lang/Object;
.source "SeslCircularSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslCircularSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SweepGradientVariable"
.end annotation


# instance fields
.field color:[I

.field pos:[F

.field final synthetic this$0:Landroidx/picker/widget/SeslCircularSeekBarView;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslCircularSeekBarView;)V
    .locals 1

    .line 435
    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->this$0:Landroidx/picker/widget/SeslCircularSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    new-array v0, p1, [I

    .line 436
    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->color:[I

    new-array p1, p1, [F

    .line 437
    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->pos:[F

    return-void
.end method

.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field value:[F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->value:[F

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->value:[F

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->get(F)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->value:[F

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    return-void
.end method

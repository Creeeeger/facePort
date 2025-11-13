.class public final Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;->$r8$classId:I

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    return-void
.end method


# virtual methods
.method public final setProperty(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    :pswitch_1
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    :pswitch_2
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setScaleY(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    :pswitch_3
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setScaleX(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    :pswitch_4
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setRotationY(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    :pswitch_5
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setRotationX(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    :pswitch_6
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setRotation(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    :pswitch_7
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setElevation(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    :pswitch_8
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setAlpha(F)V

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

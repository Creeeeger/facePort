.class public final Landroidx/constraintlayout/utils/widget/ImageFilterView$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 19
    .line 20
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v0, p2

    .line 25
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    int-to-float p1, p1

    .line 46
    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 47
    .line 48
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    .line 49
    .line 50
    mul-float/2addr p1, p0

    .line 51
    const/high16 p0, 0x40000000    # 2.0f

    .line 52
    .line 53
    div-float v5, p1, p0

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    move-object v0, p2

    .line 58
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

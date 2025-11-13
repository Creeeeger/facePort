.class public final Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDiff:F

.field public final mStartPosition:F

.field public final synthetic this$0:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;FF)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->this$0:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    sub-float/2addr p3, p2

    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->this$0:Landroidx/appcompat/widget/SwitchCompat;

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method

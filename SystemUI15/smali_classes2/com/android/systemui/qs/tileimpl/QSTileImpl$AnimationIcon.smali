.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimatedResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;-><init>(II)V

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;->mAnimatedResId:I

    return-void
.end method


# virtual methods
.method public final getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;->mAnimatedResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "AnimationIcon[resId=0x%08x]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

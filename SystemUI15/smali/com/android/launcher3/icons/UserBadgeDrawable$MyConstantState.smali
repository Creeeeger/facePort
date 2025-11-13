.class public final Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBase:Landroid/graphics/drawable/Drawable$ConstantState;

.field public final mBaseColor:I

.field public final mBgColor:I

.field public final mShouldDrawBackground:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;IIZ)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBase:Landroid/graphics/drawable/Drawable$ConstantState;

    iput p2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBgColor:I

    iput p3, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBaseColor:I

    iput-boolean p4, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mShouldDrawBackground:Z

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBase:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    new-instance v6, Lcom/android/launcher3/icons/UserBadgeDrawable;

    iget-object v0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBase:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBgColor:I

    iget v3, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBaseColor:I

    iget-boolean v4, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mShouldDrawBackground:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZI)V

    return-object v6
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    new-instance v6, Lcom/android/launcher3/icons/UserBadgeDrawable;

    iget-object v0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBase:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBgColor:I

    iget v3, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBaseColor:I

    iget-boolean v4, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mShouldDrawBackground:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZI)V

    return-object v6
.end method

.method public final newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 7

    new-instance v6, Lcom/android/launcher3/icons/UserBadgeDrawable;

    iget-object v0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBase:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBgColor:I

    iget v3, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBaseColor:I

    iget-boolean v4, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mShouldDrawBackground:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZI)V

    return-object v6
.end method

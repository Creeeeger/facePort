.class public final Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
    .locals 4

    new-instance v0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBase:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBgColor:I

    iget v3, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBaseColor:I

    iget-boolean p0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mShouldDrawBackground:Z

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZ)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBase:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBgColor:I

    iget v2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBaseColor:I

    iget-boolean p0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mShouldDrawBackground:Z

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZ)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBase:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBgColor:I

    iget v1, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mBaseColor:I

    iget-boolean p0, p0, Lcom/android/launcher3/icons/UserBadgeDrawable$MyConstantState;->mShouldDrawBackground:Z

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZ)V

    return-object v0
.end method

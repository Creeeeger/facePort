.class public final Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;->this$0:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(FI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;->this$0:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    iget v2, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dotscount:I

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v1, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080d24

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    aget-object p0, p0, p1

    iget-object p1, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080669

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

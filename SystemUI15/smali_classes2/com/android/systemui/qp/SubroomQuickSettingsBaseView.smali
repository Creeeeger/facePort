.class public Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public dots:[Landroid/widget/ImageView;

.field public dotscount:I

.field public mBackButton:Landroid/widget/RelativeLayout;

.field public mBackImageView:Landroid/widget/ImageView;

.field public mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

.field public final mContext:Landroid/content/Context;

.field public mSettingsContainer:Landroid/widget/LinearLayout;

.field public final mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

.field public final mViewPagerOnPageChangeListener:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;

.field public sliderDotspanel:Landroid/widget/LinearLayout;

.field public viewPager:Lcom/android/systemui/qp/RTLViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V

    iput-object p2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mViewPagerOnPageChangeListener:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;

    const-string p2, "SubroomQuickSettingsBaseView"

    invoke-static {p2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->setSubscreenSettings(I)V

    const v1, 0x7f0a0e14

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/RTLViewPager;

    iput-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->viewPager:Lcom/android/systemui/qp/RTLViewPager;

    new-instance v1, Lcom/android/systemui/qp/ViewPagerAdapter;

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/qp/ViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->viewPager:Lcom/android/systemui/qp/RTLViewPager;

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iput-object p0, v1, Lcom/android/systemui/qp/ViewPagerAdapter;->subRoomButtonListener:Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;

    const v1, 0x7f0a08aa

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->sliderDotspanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dotscount:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dotscount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080d24

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0710cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->sliderDotspanel:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080669

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->viewPager:Lcom/android/systemui/qp/RTLViewPager;

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mViewPagerOnPageChangeListener:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;

    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    const-string v0, "SubroomQuickSettingsBaseView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->viewPager:Lcom/android/systemui/qp/RTLViewPager;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "onFinishInflate"

    const-string v1, "SubroomQuickSettingsBaseView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0c91

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0c56

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    const v0, 0x7f0a0c51

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackButton:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a013c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackImageView:Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SettingContainer=="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setSubscreenSettings(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackButton:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackImageView:Landroid/widget/ImageView;

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackImageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_3
    return-void
.end method

.class public Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field public final mContext:Landroid/content/Context;

.field public mDrawableInsetSize:I

.field public mDrawableSize:I

.field public mExtraSystemStatusViewGroup:Landroid/view/ViewGroup;

.field public mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field public final mStatusIcons:Ljava/util/Map;

.field public mSystemStatusViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addDoubleShadow(Landroid/view/View;)V
    .locals 7

    instance-of v0, p1, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v6, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget v4, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mDrawableSize:I

    iget v5, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mDrawableInsetSize:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final fetchStatusIconForResId(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    new-instance v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070394

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070392

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070393

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    new-instance v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07038e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07038c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07038d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mDrawableSize:I

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mDrawableInsetSize:I

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a03cd

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->addDoubleShadow(Landroid/view/View;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a03c0

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->addDoubleShadow(Landroid/view/View;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a03c3

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a03c8

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a03c2

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a03c9

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a03ca

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->addDoubleShadow(Landroid/view/View;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a03c1

    invoke-virtual {p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a03cc

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mSystemStatusViewGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a03c7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mExtraSystemStatusViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

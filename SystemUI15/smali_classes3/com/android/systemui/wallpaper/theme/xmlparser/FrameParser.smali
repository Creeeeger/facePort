.class public final Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    if-nez p0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "top"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iput v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    goto :goto_1

    :cond_3
    const-string v5, "minInterval"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iput v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iput-object v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    goto :goto_2

    :cond_6
    iget-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance v10, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    iget-object v1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->backgroundId:I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->frameSize:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->x:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->y:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->scale:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startIndex:Ljava/util/ArrayList;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    invoke-virtual {v10, v0}, Landroid/view/SurfaceView;->setTop(I)V

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    iput p0, v10, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    iget-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_9

    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, -0x2

    invoke-virtual {p0, v10, v0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    iput-object v10, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    :cond_9
    :goto_2
    return-void
.end method

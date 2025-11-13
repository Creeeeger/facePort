.class public final Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;
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
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    if-nez p0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    iget-object v1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "snow"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/SnowView;

    iget-object v5, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/wallpaper/theme/view/SnowView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    invoke-virtual {v1, v4, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "rain"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/RainView;

    iget-object v5, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/wallpaper/theme/view/RainView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    invoke-virtual {v1, v4, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_5
    const-string v4, "leaf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/LeafView;

    iget-object v5, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/wallpaper/theme/view/LeafView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    invoke-virtual {v1, v4, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_6
    const-string v4, "flower"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/FlowerView;

    iget-object v5, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/wallpaper/theme/view/FlowerView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    invoke-virtual {v1, v4, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

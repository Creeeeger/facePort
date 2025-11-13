.class public final Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/WallpaperSource;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mPackageName:Ljava/lang/String;

.field public final mRootView:Landroid/widget/FrameLayout;

.field public final mWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mWhich:I

    iput-object p3, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mRootView:Landroid/widget/FrameLayout;

    const-string p3, "ImageWallpaper_"

    const-string v1, "[AnimatedSource]"

    invoke-static {p2, p3, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mPackageName:Ljava/lang/String;

    const-string p0, "AnimatedSource packageName : "

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getComplexAnimation()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSurfaceCreated: e = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->TAG:Ljava/lang/String;

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_0

    new-instance v3, Landroid/content/APKContents;

    invoke-static {v0}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_12

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_12

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->isFixedOrientation()Z

    move-result v12

    iget-object v7, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mPackageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Landroid/widget/FrameLayout;IIZZ)V

    new-instance p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;-><init>(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_4

    iget-object v4, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "animation"

    const-string/jumbo v6, "xml"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    goto :goto_2

    :cond_4
    :goto_1
    move-object v3, v2

    :goto_2
    iput-object v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_3
    const/4 v5, 0x1

    if-eq v4, v5, :cond_11

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    iput-boolean v5, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    goto :goto_4

    :cond_5
    if-ne v4, v1, :cond_6

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    :cond_6
    :goto_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;

    if-nez v5, :cond_e

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move-object v5, v2

    goto :goto_5

    :cond_8
    const-string/jumbo v5, "screen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lcom/android/systemui/wallpaper/theme/xmlparser/ScreenParser;

    invoke-direct {v5}, Lcom/android/systemui/wallpaper/theme/xmlparser/ScreenParser;-><init>()V

    goto :goto_5

    :cond_9
    const-string/jumbo v5, "view"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;

    invoke-direct {v5}, Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;-><init>()V

    goto :goto_5

    :cond_a
    const-string/jumbo v5, "scene"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;

    invoke-direct {v5}, Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;-><init>()V

    goto :goto_5

    :cond_b
    invoke-static {v4}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    new-instance v5, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string v5, "frame"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;

    invoke-direct {v5}, Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;-><init>()V

    goto :goto_5

    :cond_d
    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lcom/android/systemui/wallpaper/theme/xmlparser/ItemParser;

    invoke-direct {v5}, Lcom/android/systemui/wallpaper/theme/xmlparser/ItemParser;-><init>()V

    :cond_e
    :goto_5
    if-eqz v5, :cond_f

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v5, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "tagName : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ThemeParser"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;->parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    :cond_10
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto/16 :goto_3

    :cond_11
    iget-object v2, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    :cond_12
    :goto_6
    return-object v2
.end method

.method public final isFixedOrientation()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->mWhich:I

    invoke-static {v2, v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isFixedOrientation: , isFold="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFixedOrientation="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

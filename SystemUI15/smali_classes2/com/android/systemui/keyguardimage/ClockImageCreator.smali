.class public final Lcom/android/systemui/keyguardimage/ClockImageCreator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field public final mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field public final mContext:Landroid/content/Context;

.field public final mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

.field public final mPluginFaceWidget:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mPluginFaceWidget:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/subscreen/SubScreenManager;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/cover/CoverScreenManager;

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    return-void
.end method


# virtual methods
.method public final createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createImage() option: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ClockImageCreator"

    invoke-static {v6, v3, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    iget-object v8, v0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    const/4 v9, 0x0

    const/4 v11, 0x4

    if-ne v3, v11, :cond_10

    iget v3, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    const/16 v11, 0x21

    const-string v12, ", customColor="

    const-string v13, ", fontColorType="

    const-string/jumbo v14, "setClockPreviewColor() paletteIndex="

    const-string/jumbo v15, "setClockPreviewColor() no plugin"

    const-string v10, "getClockPreview() no plugin"

    if-ne v3, v11, :cond_8

    iget-object v3, v0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    if-nez v3, :cond_0

    const-string v0, "createImage return null - mCoverScreenManager is null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v9

    :cond_0
    iget-object v11, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    const-string v7, "CoverScreenManager"

    if-eqz v11, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v5, v3, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez v5, :cond_1

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v5, v9

    goto :goto_1

    :cond_1
    invoke-interface {v5, v11}, Lcom/android/systemui/plugins/cover/PluginCover;->getCoverScreenPreview(I)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_2
    iget-object v5, v3, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez v5, :cond_3

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Lcom/android/systemui/plugins/cover/PluginCover;->getCoverScreenPreview()Landroid/view/View;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_4

    const-string v0, "createImage return null - getClockPreview is null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v9

    :cond_4
    iget v6, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    if-nez v6, :cond_5

    iget v10, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    :cond_5
    iget v10, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    iget v11, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    iget-object v9, v3, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez v9, :cond_6

    invoke-static {v7, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-static {v10, v11, v14, v13, v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v3, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-interface {v3, v5, v10, v11, v6}, Lcom/android/systemui/plugins/cover/PluginCover;->setClockColor(Landroid/view/View;III)V

    :cond_7
    :goto_2
    const/4 v9, 0x2

    goto/16 :goto_f

    :cond_8
    iget-object v3, v0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    if-nez v3, :cond_9

    const-string v0, "createImage returns null - SubScreenManager is null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v0, 0x0

    return-object v0

    :cond_9
    iget-object v5, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    const-string v7, "SubScreenManager"

    if-eqz v5, :cond_b

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v9, v3, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez v9, :cond_a

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_a
    invoke-interface {v9, v5}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getSubScreenPreview(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    :cond_b
    iget-object v5, v3, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez v5, :cond_c

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    invoke-interface {v5}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getSubScreenPreview()Landroid/view/View;

    move-result-object v5

    :goto_5
    if-nez v5, :cond_d

    const-string v0, "createImage returns null - getClockPreview is null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_d
    iget v6, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    if-nez v6, :cond_e

    iget v9, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    :cond_e
    iget v9, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    iget v10, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    iget-object v11, v3, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez v11, :cond_f

    invoke-static {v7, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_f
    invoke-static {v9, v10, v14, v13, v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v3, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {v3, v5, v9, v10, v6}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->setClockColor(Landroid/view/View;III)V

    goto :goto_2

    :cond_10
    iget-object v3, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    if-nez v3, :cond_16

    iget-object v3, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getDefaultClockType()I

    move-result v3

    goto :goto_6

    :cond_11
    const/4 v3, 0x2

    :goto_6
    iget-object v5, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v5, :cond_12

    invoke-interface {v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getConsideredClockType()I

    move-result v5

    :goto_7
    const/4 v7, -0x1

    goto :goto_8

    :cond_12
    const/4 v5, 0x2

    goto :goto_7

    :goto_8
    if-ne v5, v7, :cond_13

    goto :goto_b

    :cond_13
    iget-object v7, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v7, :cond_14

    invoke-interface {v7, v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockGroup(I)I

    move-result v7

    :goto_9
    const/4 v9, 0x1

    goto :goto_a

    :cond_14
    const/4 v7, 0x2

    goto :goto_9

    :goto_a
    if-eq v7, v9, :cond_15

    const/4 v9, 0x2

    if-eq v7, v9, :cond_15

    if-eq v7, v11, :cond_15

    const/4 v9, 0x5

    if-eq v7, v9, :cond_15

    const/4 v9, 0x7

    if-eq v7, v9, :cond_15

    const/16 v9, 0x9

    if-eq v7, v9, :cond_15

    const/16 v9, 0xa

    if-eq v7, v9, :cond_15

    goto :goto_b

    :cond_15
    move v3, v5

    :goto_b
    move v9, v3

    goto :goto_c

    :cond_16
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_b

    :goto_c
    const-string v3, "createImage clockType: "

    invoke-static {v9, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v6, v3, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v3, :cond_17

    invoke-interface {v3, v9}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    goto :goto_d

    :cond_17
    const/4 v5, 0x0

    :goto_d
    if-nez v5, :cond_18

    const-string v0, "createImage returns null - clockView is null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_18
    iget-boolean v3, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    if-nez v3, :cond_19

    iget-object v3, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v3, :cond_1c

    iget-object v6, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    invoke-interface {v3, v5, v6}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setAdaptiveColors(Landroid/view/View;[I)V

    goto :goto_e

    :cond_19
    iget-boolean v3, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    if-eqz v3, :cond_1b

    iget v3, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    if-eqz v3, :cond_1b

    iget v3, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->legibilityColor:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1a

    iget-object v6, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v6, :cond_1a

    invoke-interface {v6, v5, v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setFontColorType(Landroid/view/View;I)V

    :cond_1a
    iget v3, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    iget-object v6, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v6, :cond_1c

    invoke-interface {v6, v5, v3, v4}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setColorThemeAdaptiveColor(Landroid/view/View;IZ)V

    goto :goto_e

    :cond_1b
    iget-object v3, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v3, :cond_1c

    invoke-interface {v3, v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->setPreDefineOrCustomColor(Landroid/view/View;)V

    :cond_1c
    :goto_e
    iget-boolean v3, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_1d
    iget-object v3, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v3, :cond_1e

    invoke-interface {v3, v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->forceRefresh(Landroid/view/View;)V

    :cond_1e
    :goto_f
    invoke-static {v5, v1, v4}, Lcom/android/systemui/keyguardimage/ImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1f

    const/4 v5, 0x0

    return-object v5

    :cond_1f
    const/4 v5, 0x0

    if-nez v2, :cond_20

    return-object v3

    :cond_20
    iget-object v6, v0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    const v10, 0x7f0703bc

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v7, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v6, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v7, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-ge v6, v7, :cond_21

    const/4 v6, 0x1

    goto :goto_10

    :cond_21
    move v6, v4

    :goto_10
    iget-object v7, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-nez v7, :cond_22

    move v7, v4

    goto :goto_11

    :cond_22
    invoke-interface {v7}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockGravity()I

    move-result v7

    :goto_11
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, -0x1

    if-eq v7, v11, :cond_23

    if-nez v7, :cond_24

    :cond_23
    const/4 v11, 0x1

    goto/16 :goto_14

    :cond_24
    iget-object v5, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-nez v5, :cond_25

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v11, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    const/4 v11, 0x1

    goto :goto_13

    :cond_25
    :try_start_0
    invoke-interface {v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getKeyguardClockHorizontalPadding()Landroid/util/Pair;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :catch_0
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v11, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :goto_13
    if-ne v7, v11, :cond_26

    iget v7, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v7, v12

    int-to-float v7, v7

    iget v12, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    iget-object v13, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v12, v5

    div-float/2addr v12, v10

    add-float/2addr v12, v7

    div-float/2addr v12, v10

    float-to-int v5, v12

    iput v5, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_17

    :cond_26
    const v12, 0x800003

    if-ne v7, v12, :cond_27

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    iget v7, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_17

    :cond_27
    iget v7, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    iget v12, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    sub-int/2addr v7, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v7, v5

    iput v7, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_17

    :goto_14
    iget-object v7, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-eqz v7, :cond_28

    invoke-interface {v7, v9}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->isStartAlignClock(I)Z

    move-result v7

    goto :goto_15

    :cond_28
    move v7, v4

    :goto_15
    if-eqz v7, :cond_2e

    iget v7, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v12, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    iget-object v13, v0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v15, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v14, v15}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-eqz v14, :cond_29

    iget-object v5, v14, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginKeyguardSidePadding:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    :cond_29
    const v14, 0x7f0703be

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    if-nez v5, :cond_2a

    goto :goto_16

    :cond_2a
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_2b

    xor-int/lit8 v13, v6, 0x1

    invoke-interface {v5, v7, v12, v13}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;->getTabletClockSidePadding(IIZ)I

    move-result v13

    goto :goto_16

    :cond_2b
    if-eqz v6, :cond_2c

    invoke-interface {v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;->getClockSidePadding()I

    move-result v13

    goto :goto_16

    :cond_2c
    invoke-interface {v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;->needToSidePaddingForClock()Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-interface {v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;->getSidePaddingWhenIndisplayFP()I

    move-result v13

    goto :goto_16

    :cond_2d
    int-to-float v5, v7

    const v7, 0x3e25e354    # 0.162f

    mul-float/2addr v5, v7

    float-to-int v13, v5

    :goto_16
    int-to-float v5, v13

    iget v7, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Point;->x:I

    iget-boolean v7, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    if-eqz v7, :cond_2f

    iget v7, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    sub-int/2addr v7, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v7, v5

    iput v7, v2, Landroid/graphics/Point;->x:I

    goto :goto_17

    :cond_2e
    iget v5, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    iput v5, v2, Landroid/graphics/Point;->x:I

    :cond_2f
    :goto_17
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v7, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    const/4 v12, 0x0

    cmpg-float v13, v12, v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-gez v13, :cond_30

    cmpg-float v13, v7, v14

    if-gez v13, :cond_30

    div-float/2addr v5, v7

    :cond_30
    iget-object v7, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-nez v7, :cond_31

    :goto_18
    move v7, v11

    goto :goto_19

    :cond_31
    invoke-interface {v7, v9}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockScalePivot(I)I

    move-result v7

    const/high16 v13, 0x10000

    and-int/2addr v7, v13

    if-ne v7, v13, :cond_32

    goto :goto_18

    :cond_32
    move v7, v4

    :goto_19
    if-eqz v7, :cond_34

    iget-object v7, v8, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-nez v7, :cond_33

    move v7, v14

    goto :goto_1a

    :cond_33
    invoke-interface {v7}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->getClockScale()F

    move-result v7

    :goto_1a
    div-float v7, v14, v7

    sub-float/2addr v7, v14

    mul-float/2addr v7, v5

    div-float/2addr v7, v10

    float-to-int v7, v7

    goto :goto_1b

    :cond_34
    move v7, v4

    :goto_1b
    iget v8, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v8, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_35

    move v5, v12

    goto :goto_1c

    :cond_35
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v10, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    div-float/2addr v8, v10

    sub-float/2addr v5, v8

    :goto_1c
    if-eqz v6, :cond_36

    goto :goto_1d

    :cond_36
    iget-object v6, v0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    int-to-float v12, v6

    :goto_1d
    add-float/2addr v5, v12

    int-to-float v6, v7

    add-float/2addr v5, v6

    iget-object v0, v0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mPluginFaceWidget:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v0, :cond_37

    invoke-interface {v0, v9, v4}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->getMinTopMargin(IZ)I

    move-result v4

    :cond_37
    int-to-float v0, v4

    add-float/2addr v5, v0

    iget v0, v1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v5, v0

    float-to-int v0, v5

    iput v0, v2, Landroid/graphics/Point;->y:I

    return-object v3
.end method

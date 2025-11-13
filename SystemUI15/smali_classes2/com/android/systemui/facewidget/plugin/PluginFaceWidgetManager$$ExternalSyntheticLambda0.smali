.class public final synthetic Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    return-void
.end method


# virtual methods
.method public final onNioLayoutUpdated(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object v2, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v2, :cond_3

    iget v11, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingLeft:I

    iget v12, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingRight:I

    iget v13, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->totalHeight:I

    iget v14, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->topMargin:I

    iget v15, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerStartX:I

    iget v10, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerEndX:I

    iget v9, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconSize:I

    iget v8, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconScaleRatio:F

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousPaddingLeft:I

    if-ne v11, v3, :cond_0

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousPaddingRight:I

    if-ne v12, v3, :cond_0

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousTotalHeight:I

    if-ne v13, v3, :cond_0

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousTopMargin:I

    if-ne v14, v3, :cond_0

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousContainerStartX:I

    if-ne v15, v3, :cond_0

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousContainerEndX:I

    if-ne v10, v3, :cond_0

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousIconSize:I

    if-ne v9, v3, :cond_0

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousIconScaleRatio:F

    cmpl-float v3, v8, v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 p0, v8

    move v8, v10

    move/from16 v16, v9

    move v0, v10

    move/from16 v10, p0

    invoke-interface/range {v2 .. v10}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onNioLayoutUpdated(IIIIIIIF)V

    iput v11, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousPaddingLeft:I

    iput v12, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousPaddingRight:I

    iput v13, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousTotalHeight:I

    iput v14, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousTopMargin:I

    iput v15, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousContainerStartX:I

    iput v0, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousContainerEndX:I

    move/from16 v0, v16

    iput v0, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousIconSize:I

    move/from16 v0, p0

    iput v0, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousIconScaleRatio:F

    move-object/from16 v0, p1

    :cond_1
    iget v2, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->keyguardStatusBarViewAlpha:F

    iget v0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->keyguardStatusBarViewVisibility:I

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousAlpha:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousVisibility:I

    if-eq v0, v3, :cond_3

    :cond_2
    iget-object v3, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {v3, v2, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onNioViewStateUpdated(FI)V

    iput v2, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousAlpha:F

    iput v0, v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousVisibility:I

    :cond_3
    return-void
.end method

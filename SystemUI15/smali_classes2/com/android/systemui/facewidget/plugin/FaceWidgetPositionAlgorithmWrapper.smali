.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;
.super Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-void
.end method


# virtual methods
.method public final getBottomMarginY()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;->getBottomMarginY()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLockscreenNotifPadding(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;->getMinStackScrollerPadding()F

    move-result p0

    sub-float/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPanelExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;->isPanelExpanded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final loadDimens(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;->loadDimens()V

    :cond_0
    return-void
.end method

.method public final run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;->run(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x6

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iput-object p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->contentsContainerPosition:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final setup(IFIIIFIIILcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p7

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p10

    invoke-interface/range {v0 .. v16}, Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;->setup(IIIFIIIZZFFZIIILjava/util/function/Supplier;)V

    :cond_0
    return-void
.end method

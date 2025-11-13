.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    const-string p1, "SubscreenBrightnessController"

    const-string p3, "onProgressChanged"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    sget-boolean p3, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/qp/SubscreenBrightnessController;->onChanged(IZZ)V

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p3, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getSubscreenBrightnessMode()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialogEnabled:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    if-gt p1, p2, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p3, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    if-eqz p3, :cond_2

    iget v1, p3, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    if-gt v1, p2, :cond_2

    sget-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    if-eqz v1, :cond_2

    iget-boolean p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    const/4 v0, 0x1

    invoke-virtual {p3, v0, p1}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setDualSeekBarResources(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setThumbScale(I)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    iget-boolean p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    invoke-virtual {p3, v0, p1}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setDualSeekBarResources(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setThumbScale(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mThumbAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v2, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object v2, v2, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/qp/SubscreenBrightnessController;->onChanged(IZZ)V

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-static {v1, p1}, Lcom/android/systemui/qp/SubscreenBrightnessController;->-$$Nest$monProgressSnap(Lcom/android/systemui/qp/SubscreenBrightnessController;Landroid/widget/SeekBar;)V

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v1, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object v1, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mThumbAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v2, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-boolean v1, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setDualSeekBarResources(ZZ)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-boolean p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE2025"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPPE2024"

    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/2addr p1, v3

    int-to-long v0, p1

    const-string p1, "QPDS2025"

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE2009"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.class public final synthetic Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    sget p1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPPE2023"

    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mContext:Landroid/content/Context;

    const-string v0, "com.android.systemui.qp.SubscreenBrightnessDetailActivity"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$1$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$1$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->newButton:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$1$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->getSettingsHelper$2()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/SettingsHelper;->setPanelSplitReversed(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$1$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->isReversed(Z)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->playAnim(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$1$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->buttonDescription:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->updateText(Landroid/widget/TextView;ZZ)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$1$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    const-string p1, "QPPS1027"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->updateSALog(Ljava/lang/String;Z)V

    return-void
.end method

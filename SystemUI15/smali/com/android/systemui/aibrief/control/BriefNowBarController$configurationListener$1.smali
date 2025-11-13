.class public final Lcom/android/systemui/aibrief/control/BriefNowBarController$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$configurationListener$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$configurationListener$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->updateNowBar$default(Lcom/android/systemui/aibrief/control/BriefNowBarController;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$configurationListener$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->updateRemoteNowBar$default(Lcom/android/systemui/aibrief/control/BriefNowBarController;ZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$configurationListener$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-static {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->access$getViewController$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/aibrief/ui/BriefViewController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onDensityOrFontScaleChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDisplayDeviceTypeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLayoutDirectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLocaleListChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onMaxBoundsChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSmallestScreenWidthChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onThemeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUiModeChanged()V
    .locals 0

    return-void
.end method

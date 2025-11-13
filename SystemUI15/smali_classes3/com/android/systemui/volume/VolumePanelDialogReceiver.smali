.class public final Lcom/android/systemui/volume/VolumePanelDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final volumeNavigator:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

.field public final volumePanelNavigationInteractor:Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/VolumePanelDialogReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanelDialogReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialogReceiver;->volumeNavigator:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelDialogReceiver;->volumePanelNavigationInteractor:Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui.action.LAUNCH_VOLUME_PANEL_DIALOG"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.settings.panel.action.VOLUME"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialogReceiver;->volumeNavigator:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialogReceiver;->volumePanelNavigationInteractor:Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;

    iget-object p0, p0, Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;->volumePanelFlag:Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/volume/domain/model/VolumePanelRoute;->COMPOSE_VOLUME_PANEL:Lcom/android/systemui/volume/domain/model/VolumePanelRoute;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->openVolumePanel(Lcom/android/systemui/volume/domain/model/VolumePanelRoute;)V

    :cond_1
    return-void
.end method

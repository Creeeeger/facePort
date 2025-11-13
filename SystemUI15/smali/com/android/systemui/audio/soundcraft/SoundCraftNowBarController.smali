.class public final Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public listener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;

.field public final soundCraftNowBarViewProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;->soundCraftNowBarViewProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final createView()Landroid/view/View;
    .locals 5

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->SHOW:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;->soundCraftNowBarViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController$createView$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController$createView$1$1;-><init>(Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final dismiss()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;->listener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showBudsInfo mFaceWidgetPlugin"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginFaceWidgetManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v0, :cond_0

    const-string v0, "destroyFullNowBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->destroyFullNowBar()V

    :cond_0
    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

.field public final synthetic f$1:Lcom/android/systemui/plugins/OverlayPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;Lcom/android/systemui/plugins/OverlayPlugin;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setForcePluginOpen(Ljava/lang/Object;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback;

    invoke-direct {v4, v0, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3$Callback;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;Lcom/android/systemui/plugins/OverlayPlugin;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-interface {p0, v2, v3, v4, v0}, Lcom/android/systemui/plugins/OverlayPlugin;->setup(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/plugins/OverlayPlugin$Callback;Lcom/android/systemui/plugins/statusbar/DozeParameters;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

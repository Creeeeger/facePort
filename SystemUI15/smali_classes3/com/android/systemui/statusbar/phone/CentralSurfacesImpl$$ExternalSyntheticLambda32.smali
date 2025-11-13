.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda32;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Landroid/app/Fragment;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda32;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    instance-of v0, p1, Lcom/android/systemui/qs/QSFragmentLegacy;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/systemui/qs/QSFragmentLegacy;

    iget-object p1, p1, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/qs/QSImpl;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    :cond_2
    return-void
.end method

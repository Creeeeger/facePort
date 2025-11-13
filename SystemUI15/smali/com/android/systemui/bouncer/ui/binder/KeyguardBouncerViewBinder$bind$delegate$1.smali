.class public final Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

.field public final synthetic $selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

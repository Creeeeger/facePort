.class public final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/CredentialView$Host;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$2;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$2;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->sendEarlyUserCanceled()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void
.end method

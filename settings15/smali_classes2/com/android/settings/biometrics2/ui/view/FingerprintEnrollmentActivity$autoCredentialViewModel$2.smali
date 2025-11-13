.class final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$autoCredentialViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$autoCredentialViewModel$2;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$autoCredentialViewModel$2;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    sget v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModelProvider()Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    return-object p0
.end method

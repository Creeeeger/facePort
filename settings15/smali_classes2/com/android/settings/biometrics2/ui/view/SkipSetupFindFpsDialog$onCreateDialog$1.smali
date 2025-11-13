.class public final Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog$onCreateDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog$onCreateDialog$1;->this$0:Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog$onCreateDialog$1;->this$0:Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog;->mViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.class public final Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActionLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

.field public final mRequest:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/app/Application;Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    iput p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mUserId:I

    iput-object p4, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mRequest:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iput-object p3, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    return-void
.end method

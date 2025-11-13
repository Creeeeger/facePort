.class public final Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractor;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p5, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    return-void
.end method

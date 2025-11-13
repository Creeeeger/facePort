.class public final Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;


# instance fields
.field public final contentView:Landroid/hardware/biometrics/PromptContentView;

.field public final description:Ljava/lang/String;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

.field public final showEmergencyCallButton:Z

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final user:Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/PromptContentView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->user:Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->subtitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->description:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->contentView:Landroid/hardware/biometrics/PromptContentView;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->icon:Landroid/graphics/drawable/Drawable;

    iput-boolean p8, p0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->showEmergencyCallButton:Z

    return-void
.end method

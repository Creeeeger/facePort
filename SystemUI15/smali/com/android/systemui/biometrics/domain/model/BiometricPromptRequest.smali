.class public abstract Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contentView:Landroid/hardware/biometrics/PromptContentView;

.field public final description:Ljava/lang/String;

.field public final operationInfo:Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

.field public final showEmergencyCallButton:Z

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final userInfo:Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->subtitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->contentView:Landroid/hardware/biometrics/PromptContentView;

    iput-object p5, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->userInfo:Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    iput-object p6, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->operationInfo:Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    iput-boolean p7, p0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->showEmergencyCallButton:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Z)V

    return-void
.end method

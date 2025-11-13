.class public final Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepository;


# instance fields
.field public final _alwaysRequireConfirmationInApps:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final alwaysRequireConfirmationInApps:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mainHandler:Landroid/os/Handler;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->userId:I

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->mainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->_alwaysRequireConfirmationInApps:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->alwaysRequireConfirmationInApps:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getAlwaysRequireConfirmationInApps()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->alwaysRequireConfirmationInApps:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

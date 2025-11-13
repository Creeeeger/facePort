.class public final Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$Empty;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepository;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$Empty;

.field public static final alwaysRequireConfirmationInApps:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$Empty;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$Empty;-><init>()V

    sput-object v0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$Empty;->INSTANCE:Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$Empty;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$Empty;->alwaysRequireConfirmationInApps:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlwaysRequireConfirmationInApps()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    sget-object p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$Empty;->alwaysRequireConfirmationInApps:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-object p0
.end method

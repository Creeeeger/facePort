.class public final Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl$forUser$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $id:Ljava/lang/Integer;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl$forUser$1;->$id:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl$forUser$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    new-instance p1, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl$forUser$1;->$id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl$forUser$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;

    iget-object v1, p0, Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;->mainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;-><init>(ILandroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;)V

    iget-object p0, p1, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->_alwaysRequireConfirmationInApps:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v7, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$watch$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$watch$1;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    new-instance p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;

    iget-object v1, p1, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->mainHandler:Landroid/os/Handler;

    iget-object v8, p1, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v9, "face_unlock_always_require_confirmation"

    const/4 v10, 0x0

    iget v11, p1, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl;->userId:I

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;-><init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/util/settings/SecureSettings;Ljava/lang/String;ZI)V

    const/4 v0, 0x0

    invoke-interface {v8, v9, v0, p0, v11}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryImpl$watch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

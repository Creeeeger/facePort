.class public final Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $defaultValue:Z

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $onChange:Lkotlin/jvm/functions/Function1;

.field public final synthetic $this_watch:Lcom/android/systemui/util/settings/SecureSettings;

.field public final synthetic $userId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/util/settings/SecureSettings;Ljava/lang/String;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$onChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$this_watch:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p4, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$key:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$defaultValue:Z

    iput p6, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$userId:I

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$onChange:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$this_watch:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$key:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$defaultValue:Z

    iget p0, p0, Lcom/android/systemui/biometrics/data/repository/FaceUserSettingsRepositoryKt$watch$1;->$userId:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

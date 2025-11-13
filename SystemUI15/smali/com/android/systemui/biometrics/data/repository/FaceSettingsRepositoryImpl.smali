.class public final Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepository;


# instance fields
.field public final mainHandler:Landroid/os/Handler;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userSettings:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;->mainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FaceSettingsRepositoryImpl;->userSettings:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

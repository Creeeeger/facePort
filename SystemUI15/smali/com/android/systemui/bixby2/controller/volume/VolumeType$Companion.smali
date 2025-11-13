.class public final Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;
    .locals 1

    new-instance p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setAudioManagerWrapper$cp(Lcom/android/systemui/bixby2/util/AudioManagerWrapper;)V

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setNotificationManager$cp(Landroid/app/NotificationManager;)V

    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setContext$cp(Landroid/content/Context;)V

    const-string p0, "VolumeController_preferences"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setPreferences$cp(Landroid/content/SharedPreferences;)V

    invoke-static {}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$getPreferences$cp()Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->access$setEditor$cp(Landroid/content/SharedPreferences$Editor;)V

    const/4 p0, 0x1

    if-eq p2, p0, :cond_7

    const/4 p0, 0x2

    if-eq p2, p0, :cond_6

    const/4 p0, 0x3

    if-eq p2, p0, :cond_5

    const/4 p0, 0x5

    if-eq p2, p0, :cond_4

    const/16 p0, 0xb

    if-eq p2, p0, :cond_3

    const/16 p0, 0x1e

    if-eq p2, p0, :cond_2

    const/16 p0, 0x1f

    if-eq p2, p0, :cond_1

    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/InvalidVolumeController;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/BluetoothVolumeController;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/BixbyVolumeController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/BixbyVolumeController;-><init>()V

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/NotificationVolumeController;-><init>()V

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/MusicVolumeController;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/RingVolumeController;-><init>()V

    goto :goto_1

    :cond_7
    new-instance p0, Lcom/android/systemui/bixby2/controller/volume/SystemVolumeController;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/SystemVolumeController;-><init>()V

    :goto_1
    return-object p0
.end method

.class public final Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    return-void
.end method


# virtual methods
.method public final updateBudsModel(Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/UpdateInfoRequester;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/WearableManager;->settings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/UpdateInfoRequester;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;)V

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->bindService()Z

    return-void
.end method

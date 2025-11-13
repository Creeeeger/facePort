.class public final Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/UpdateInfoRequester;
.super Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/UpdateInfoRequester$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/UpdateInfoRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/UpdateInfoRequester;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execute : budsPluginPackageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->budsPluginPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundCraft.wearable.UpdateInfoRequester"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "requestUpdateBudsInfo : jsonString="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/UpdateInfoRequester;->budsModel:Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

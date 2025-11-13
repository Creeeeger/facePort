.class public final Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester;
.super Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final onBudsModelReceived:Lkotlin/jvm/functions/Function1;

.field public final receiver:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester;->onBudsModelReceived:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester$receiver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester$receiver$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester;)V

    invoke-direct {p2, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester;->receiver:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final bindService()Z
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/systemui/audio/soundcraft/feature/SoundCraftDebugFeatures;->INSTANCE:Lcom/android/systemui/audio/soundcraft/feature/SoundCraftDebugFeatures;

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "audio_soundcraft_debug_dummy_buds_info"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetDummyInfoRequester;

    invoke-direct {v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetDummyInfoRequester;-><init>()V

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->context:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    const-string v5, "Balanced"

    invoke-direct {v4, v5, v2}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    const-string v6, "Bass boost"

    invoke-direct {v5, v6, v3}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    new-instance v6, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    const-string v7, "Smooth"

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    new-instance v7, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    const-string v8, "Dynamic"

    invoke-direct {v7, v8, v3}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    new-instance v8, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    const-string v9, "Clear"

    invoke-direct {v8, v9, v3}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    new-instance v9, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    const-string v10, "Treble boost"

    invoke-direct {v9, v10, v3}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    new-instance v10, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    const-string v11, "Custom"

    invoke-direct {v10, v11, v3}, Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;-><init>(Ljava/lang/String;Z)V

    filled-new-array/range {v4 .. v10}, [Lcom/android/systemui/audio/soundcraft/model/common/Equalizer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v4, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    const v5, 0x7f131282

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    const v6, 0x7f13127a

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    new-instance v6, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    const v8, 0x7f13127d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v3}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    new-instance v3, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    const v8, 0x7f131279

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;-><init>(Ljava/lang/String;Z)V

    filled-new-array {v4, v5, v6, v3}, [Lcom/android/systemui/audio/soundcraft/model/buds/NoiseControl;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    new-instance v1, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;

    move-object v5, v1

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v6, v18

    move-object/from16 v20, v18

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v11

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v21, v19

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v23, 0x10f80

    const/16 v24, 0x0

    invoke-direct/range {v5 .. v24}, Lcom/android/systemui/audio/soundcraft/model/buds/BudsModel;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester;->onBudsModelReceived:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_0
    invoke-super/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->bindService()Z

    move-result v0

    return v0
.end method

.method public final execute()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execute : budsPluginPackageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->budsPluginPackageName:Ljava/lang/String;

    const-string v2, "SoundCraft.wearable.GetInfoRequester"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    const-string v0, "requestGetBudsInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/GetInfoRequester;->receiver:Landroid/os/Messenger;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-static {v2, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

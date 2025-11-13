.class public final Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $device:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic $key:I

.field public final synthetic $value:[B

.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusManager;I[BLandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iput p2, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->$key:I

    iput-object p3, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->$value:[B

    iput-object p4, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    iget-boolean v1, v0, Lcom/android/systemui/stylus/StylusManager;->hasStarted:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->$key:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->$value:[B

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/stylus/StylusManager;->inputDeviceAddressMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->$device:Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->$value:[B

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget v2, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    iget-object v2, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->this$0:Lcom/android/systemui/stylus/StylusManager;

    new-instance v3, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1$2;

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1;->$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/systemui/stylus/StylusManager$onMetadataChanged$1$2;-><init>(ILandroid/bluetooth/BluetoothDevice;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/stylus/StylusManager;->executeStylusCallbacks(Lkotlin/jvm/functions/Function1;)V

    :cond_4
    :goto_1
    return-void
.end method

.class public final Lcom/android/systemui/bluetooth/qsdialog/DeviceItemFactory$Companion;
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

    invoke-direct {p0}, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemFactory$Companion;-><init>()V

    return-void
.end method

.method public static createDeviceItem(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;
    .locals 11

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v0

    new-instance v5, Lkotlin/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v5, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    new-instance v10, Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;

    move-object v0, v10

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;-><init>(Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;Ljava/lang/String;Lkotlin/Pair;Ljava/lang/Integer;ZLjava/lang/String;Z)V

    return-object v10
.end method

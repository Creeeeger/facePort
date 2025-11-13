.class public final Lcom/android/systemui/volume/util/BluetoothIconUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-direct {v0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/android/systemui/volume/util/MfData;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/MfData;-><init>([B)V

    const/4 p0, 0x0

    iget-object v0, v0, Lcom/android/systemui/volume/util/MfData;->mDeviceId:[B

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v1

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getServerIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getResourcePath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconServerUtils;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_EXTENSION_SVG:Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_NAME_CASE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_NAME_PAIR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_NAME_RIGHT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_NAME_LEFT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getServerIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-static {p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isNextBudsModel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getServerIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static getServerIconDrawableWithDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isNextBudsModel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getServerIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->semIconIndex(Landroid/bluetooth/BluetoothDevice;)S

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "getServerIconDrawableWithDevice isNextBuds = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " name = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " iconIndex = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "BluetoothIconUtil"

    invoke-static {p1, p0, p2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final isBuds(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard;->Companion:Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-short v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->GALAXY_BUDS:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-short v1, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->GALAXY_BUDS_LIVE:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sget-object v3, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->semIconIndex(Landroid/bluetooth/BluetoothDevice;)S

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public static final isBuds3(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->semIconIndex(Landroid/bluetooth/BluetoothDevice;)S

    move-result p0

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard;->Companion:Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-short v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->GALAXY_BUDS3:S

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBudsSeries(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    int-to-byte v3, v2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [B

    aput-byte v3, v4, v1

    aput-byte v2, v4, v0

    invoke-virtual {p0, v4}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    instance-of v2, p0, [B

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    array-length p0, p0

    if-nez p0, :cond_1

    move v1, v0

    :cond_1
    xor-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method public static final isHomeMini(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->semIconIndex(Landroid/bluetooth/BluetoothDevice;)S

    move-result p0

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard;->Companion:Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-short v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->AI_SPEAKER_GALAXY_HOME_MINI:S

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNextBudsModel(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBudsSeries(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard;->Companion:Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-short v0, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->GALAXY_BUDS:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-short v1, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->GALAXY_BUDS_LIVE:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    sget-short v2, Lcom/android/systemui/volume/util/BluetoothIconUtil$SamsungStandard$Companion;->GALAXY_BUDS3:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sget-object v2, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->semIconIndex(Landroid/bluetooth/BluetoothDevice;)S

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getDeviceId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/16 v0, 0x162

    if-le p0, v0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static semIconIndex(Landroid/bluetooth/BluetoothDevice;)S
    .locals 2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerDeviceIconIndex()[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    or-int/2addr p0, v0

    int-to-short p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

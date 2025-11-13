.class final Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $apnData$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $apnDataInit:Lcom/android/settings/network/apn/ApnData;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

.field final synthetic $uriInit:Landroid/net/Uri;

.field final synthetic $valid:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/compose/runtime/MutableState;Lcom/android/settings/network/apn/ApnData;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p6, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$apnDataInit:Lcom/android/settings/network/apn/ApnData;

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$uriInit:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    iput-object p3, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$apnDataInit:Lcom/android/settings/network/apn/ApnData;

    iget-object v3, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/apn/ApnData;

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$context:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$uriInit:Landroid/net/Uri;

    const-string v6, "apnDataInit"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "newApnData"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "uriInit"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/android/settings/network/apn/ApnStatusKt;->validateApnData(Lcom/android/settings/network/apn/ApnData;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v6, v3, Lcom/android/settings/network/apn/ApnData;->newApn:Z

    if-nez v6, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/settings/network/apn/ApnData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "[validateAndSaveApnData] newApnData.networkType: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v3, Lcom/android/settings/network/apn/ApnData;->networkType:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "ApnStatus"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    if-eqz v6, :cond_3

    sget-object v7, Lcom/android/settings/network/apn/ApnRepositoryKt;->Projection:[Ljava/lang/String;

    const-class v7, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroid/telephony/SubscriptionManager;

    iget v8, v3, Lcom/android/settings/network/apn/ApnData;->subId:I

    invoke-virtual {v7, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lkotlin/Pair;

    const-string v10, "carrier_id"

    invoke-direct {v9, v10, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lkotlin/Pair;

    const-string v10, "numeric"

    invoke-direct {v9, v10, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] New APN item with id: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ApnRepository"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/settings/network/apn/ApnData$getContentValues$1$1;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Lcom/android/settings/network/apn/ApnData$getContentValues$1$1;-><init>(Landroid/content/ContentValues;I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_3
    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnData;->getContentValueMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    new-instance v7, Lcom/android/settings/network/apn/ApnData$getContentValues$1$1;

    const/4 v8, 0x1

    invoke-direct {v7, v2, v8}, Lcom/android/settings/network/apn/ApnData$getContentValues$1$1;-><init>(Landroid/content/ContentValues;I)V

    invoke-interface {v3, v7}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v3, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;

    invoke-direct {v3, v6, v5, v2, v4}, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;-><init>(ZLandroid/net/Uri;Landroid/content/ContentValues;Landroid/content/Context;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_4
    const/4 v6, 0x0

    :goto_1
    iput-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    invoke-interface {v0}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;->navigateBack()V

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    iget-boolean v1, v1, Lcom/android/settings/network/apn/ApnData;->validEnabled:Z

    if-nez v1, :cond_6

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1$1;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const/16 v22, 0x0

    const v25, 0xbfffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-static/range {v2 .. v25}, Lcom/android/settings/network/apn/ApnData;->copy$default(Lcom/android/settings/network/apn/ApnData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZJZZIZLcom/android/settings/network/apn/CustomizedConfig;I)Lcom/android/settings/network/apn/ApnData;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

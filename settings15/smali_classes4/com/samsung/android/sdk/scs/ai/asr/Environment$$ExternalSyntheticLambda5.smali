.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "server_type"

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;

    sget-object v3, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->LANGPACK_CONFIG:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "server_type"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->sharedPrefSupplier:Landroid/content/SharedPreferences;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "get_langpack_config"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "langpack_config_json"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

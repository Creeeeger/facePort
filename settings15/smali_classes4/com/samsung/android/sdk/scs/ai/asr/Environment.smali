.class public abstract Lcom/samsung/android/sdk/scs/ai/asr/Environment;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final langpackConfig:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    const-string v3, "locale"

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v1, v2, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->checkValidate:Ljava/util/function/Function;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    const-string v3, "btc_locale"

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v1, v2, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->checkValidate:Ljava/util/function/Function;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    const-string v3, "asrServerInfo"

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v1, v2, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->checkValidate:Ljava/util/function/Function;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    const-string v3, "langpackConfig"

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v1, v2, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->checkValidate:Ljava/util/function/Function;

    sput-object v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->langpackConfig:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    return-void
.end method

.method public static callContentProvider(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "Call cp "

    const-string v1, "Environment"

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content://com.samsung.android.intellivoiceservice.ai.speech2"

    goto :goto_0

    :cond_0
    const-string v0, "System permission doesn\'t have granted."

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://com.samsung.android.intellivoiceservice.ai.speech"

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda7;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p2, "Failed to call cp "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method public static getLangpackConfigInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->langpackConfig:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    iget-object p0, v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->data:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda5;)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

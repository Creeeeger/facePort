.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    check-cast p1, Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    return-object p0
.end method

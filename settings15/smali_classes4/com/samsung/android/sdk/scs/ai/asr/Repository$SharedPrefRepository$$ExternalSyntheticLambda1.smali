.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda1;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda1;->f$1:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_is_default"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v2, v0, p1, p0}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;-><init>(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;Z)V

    return-object v2
.end method

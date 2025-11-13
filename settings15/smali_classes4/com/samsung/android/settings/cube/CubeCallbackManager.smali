.class public final Lcom/samsung/android/settings/cube/CubeCallbackManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCubeFactoryHashMap:Ljava/util/HashMap;

.field public mCubeInteractionActivity:Lcom/samsung/android/settings/cube/CubeInteractionActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeFactoryHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public static parsePreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "@@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final notifyControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeFactoryHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyControlFinished() contorlId is empty  / "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/android/settings/cube/ControlResult;->mKey:Ljava/lang/String;

    const-string v2, "CubeCallbackManager"

    invoke-static {v0, v1, v2}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeFactoryHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/cube/CubeFactoryProvider;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->notifyControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeInteractionActivity:Lcom/samsung/android/settings/cube/CubeInteractionActivity;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->notifyInteractionFinished()V

    :cond_4
    return-void
.end method

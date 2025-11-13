.class public Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/Map;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/Map;Ljava/util/Map$Entry;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    move-result-object v3

    .line 16
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 25
    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 26
    :cond_2
    :goto_1
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    return-object p2
.end method

.method public getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0

    :cond_0
    return-object p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object p2
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Float;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 7
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

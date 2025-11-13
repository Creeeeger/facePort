.class public final Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private a:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "VALUE"
    .end annotation
.end field

.field private b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TYPE"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->BOOLEAN:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->NUMBER:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->STRING:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;
    .locals 8

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "TYPE"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->values()[Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    iget-object v7, v6, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->a:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    sget-object v6, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    :goto_1
    iput-object v6, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$1;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p0, p0, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "VALUE"

    packed-switch p0, :pswitch_data_0

    :try_start_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iput-object v1, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_6

    :pswitch_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_6

    :pswitch_2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Float;

    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iput-object v1, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_6

    :pswitch_3
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    iput-object v1, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_6

    :pswitch_4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_6

    :pswitch_5
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "TYPE"

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$1;->a:[I

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "VALUE"

    packed-switch v1, :pswitch_data_0

    :try_start_1
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :pswitch_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    array-length v4, p0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, p0, v2

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :pswitch_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Float;

    array-length v4, p0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :pswitch_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Boolean;

    array-length v4, p0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

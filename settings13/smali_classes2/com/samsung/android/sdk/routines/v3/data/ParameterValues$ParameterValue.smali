.class Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;
    }
.end annotation


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
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->BOOLEAN:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->NUMBER:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    .line 15
    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->STRING:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;
    .locals 4

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>()V

    .line 5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "TYPE"

    .line 7
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    .line 10
    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "VALUE"

    packed-switch p0, :pswitch_data_0

    .line 54
    :try_start_1
    new-instance p0, Ljava/lang/Throwable;

    goto/16 :goto_3

    .line 55
    :pswitch_0
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 57
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 58
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iput-object v1, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto/16 :goto_4

    .line 62
    :pswitch_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_4

    .line 63
    :pswitch_2
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Float;

    .line 65
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 66
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_1
    iput-object v1, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_4

    .line 70
    :pswitch_3
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    .line 72
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 73
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 76
    :cond_2
    iput-object v1, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_4

    .line 80
    :pswitch_4
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_4

    .line 81
    :pswitch_5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    goto :goto_4

    .line 123
    :goto_3
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
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
.method public a()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "TYPE"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->b:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;

    invoke-static {v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;->a(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue$ValueType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
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

    .line 50
    :try_start_1
    new-instance v1, Ljava/lang/Throwable;

    goto :goto_3

    .line 51
    :pswitch_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 52
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    .line 54
    array-length v4, p0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, p0, v2

    .line 55
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 59
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 60
    :pswitch_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 61
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Float;

    .line 63
    array-length v4, p0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    .line 64
    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 68
    :pswitch_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Boolean;

    .line 71
    array-length v4, p0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v5, p0, v2

    .line 72
    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 76
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 117
    :goto_3
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 126
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

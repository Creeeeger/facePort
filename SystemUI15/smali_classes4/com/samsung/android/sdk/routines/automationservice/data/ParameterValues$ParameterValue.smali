.class public final Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;


# instance fields
.field private mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TYPE"
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "VALUE"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_BOOLEAN:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_NUMBER:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->LIST_STRING:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public static final synthetic access$getMValueType$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-object p0
.end method

.method public static final synthetic access$setMValueType$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    return-void
.end method

.method public static final synthetic access$setValue$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValueType()Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final toJsonString()Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "TYPE"

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;->getMName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->mValueType:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

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

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :pswitch_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v4, p0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, p0, v2

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :pswitch_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v4, p0

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, p0, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :pswitch_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v4, p0

    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v5, p0, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->value:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
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

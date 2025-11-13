.class public Lcom/sec/ims/settings/ImsProfile;
.super Ljava/lang/Object;
.source "ImsProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected static final chatServices:[Ljava/lang/String;

.field protected static final rcsServices:[Ljava/lang/String;

.field protected static final tapiServices:[Ljava/lang/String;

.field protected static final volteServices:[Ljava/lang/String;


# instance fields
.field private mBody:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "mmtel"

    const-string v1, "mmtel-video"

    const-string v2, "mmtel-call-composer"

    const-string v3, "smsip"

    const-string v4, "ss"

    const-string v5, "cdpn"

    .line 778
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    const-string v1, "options"

    const-string v2, "presence"

    const-string v3, "im"

    const-string v4, "ft"

    const-string v5, "ft_http"

    const-string v6, "slm"

    const-string v7, "is"

    const-string v8, "vs"

    const-string v9, "euc"

    const-string v10, "gls"

    const-string v11, "profile"

    const-string v12, "ec"

    const-string v13, "chatbot-communication"

    const-string v14, "plug-in"

    const-string v15, "lastseen"

    .line 783
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    const-string v1, "ft_tapi"

    const-string v2, "ish_tapi"

    const-string v3, "vsh_tapi"

    const-string v4, "capability_tapi"

    const-string v5, "chat_tapi"

    const-string v6, "fileupload_tapi"

    const-string v7, "gls_tapi"

    const-string v8, "multimediasession_tapi"

    .line 791
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->tapiServices:[Ljava/lang/String;

    const-string v1, "im"

    const-string v2, "ft"

    const-string v3, "slm"

    const-string v4, "ft_http"

    const-string v5, "chatbot-communication"

    const-string v6, "plug-in"

    const-string v7, "gls"

    .line 799
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    .line 850
    new-instance v0, Lcom/sec/ims/settings/ImsProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/settings/ImsProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/settings/ImsProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->fromJson(Ljava/lang/String;)V

    return-void
.end method

.method private fromJson(Ljava/lang/String;)V
    .locals 1

    .line 921
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    .line 922
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->splitNetwork()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 924
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    .line 925
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/ims/settings/ImsProfile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3516
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->clone()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 3189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3191
    :cond_1
    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 3192
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1186
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getAsContentValues()Landroid/content/ContentValues;
    .locals 5

    .line 1131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1132
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1134
    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1135
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 1136
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1137
    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 1138
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1139
    :cond_2
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1140
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    :cond_3
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 1142
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 1190
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    .line 1194
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1198
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnableStatus()I
    .locals 1

    const-string v0, "enabled"

    .line 1005
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getHashAlgoType()I
    .locals 1

    const-string v0, "hash_algo_type"

    .line 3082
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    .line 1075
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPdn()Ljava/lang/String;
    .locals 1

    const-string v0, "pdn"

    .line 1326
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScmVersion()I
    .locals 2

    const-string v0, "scm_version"

    const/4 v1, 0x0

    .line 2934
    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSelfPort()I
    .locals 2

    const-string v0, "self_port"

    const/16 v1, 0x13c4

    .line 2930
    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    const-string v0, "transport"

    .line 1520
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasEmergencySupport()Z
    .locals 1

    const-string v0, "emergency_support"

    .line 2033
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 3196
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3197
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public isAllowedOnRoaming()Z
    .locals 1

    const-string v0, "support_roaming"

    .line 1671
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected splitNetwork()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 930
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 931
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    move v4, v3

    .line 933
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 934
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "type"

    .line 935
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    .line 936
    invoke-static {v7, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    .line 937
    new-instance v11, Lorg/json/JSONObject;

    const-string v12, "services"

    const-string v13, "enabled"

    const-string v14, "dereg_timeout"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v5, v12}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 939
    invoke-virtual {v11, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 943
    :cond_1
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    .line 979
    iget-object p0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pdn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scmversion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3178
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getScmVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selfport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSelfPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emergency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3179
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hashAlgoType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getHashAlgoType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 3167
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

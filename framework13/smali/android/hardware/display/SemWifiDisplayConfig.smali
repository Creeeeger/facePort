.class public final Landroid/hardware/display/SemWifiDisplayConfig;
.super Ljava/lang/Object;
.source "SemWifiDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_TYPE_AP:I = 0x2

.field public static final whitelist CONNECTION_TYPE_P2P:I = 0x1

.field public static final whitelist CONNECTION_TYPE_USB:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/SemWifiDisplayConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_INITIATE_MIRRORING:I = 0x20

.field public static final whitelist FLAG_PIN_CONNECT:I = 0x2000

.field public static final whitelist MODE_DEX_ON_PC:I = 0x3

.field public static final whitelist MODE_NORMAL_MIRRORING:I = 0x0

.field public static final whitelist MODE_WATCH_CAMERA:I = 0x1

.field public static final whitelist MODE_WIRELESS_DEX:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiDisplayConfig"


# instance fields
.field private blacklist mConnectionType:I

.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mFlags:I

.field private blacklist mIpAddress:Ljava/lang/String;

.field private blacklist mMode:I

.field private blacklist mP2pMacAddress:Ljava/lang/String;

.field private blacklist mPort:Ljava/lang/String;

.field private blacklist mPrameterGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$2;

    invoke-direct {v0}, Landroid/hardware/display/SemWifiDisplayConfig$2;-><init>()V

    sput-object v0, Landroid/hardware/display/SemWifiDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 87
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 94
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v0, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 105
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "connetionType"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "p2pMacAddress"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 87
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 94
    new-instance v1, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v1, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 116
    iput-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    .line 120
    iput p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 121
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 122
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 123
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter;

    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    const-string v2, "connection-type"

    invoke-direct {v0, v2, v1}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    const-string v1, "initparams"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 124
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 87
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 94
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v0, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "initParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    sget-object v1, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "getParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    sget-object v2, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v2, "setParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    sget-object v3, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 144
    iget-object v3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v4, "initparams"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v4, "getparams"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string/jumbo v4, "setparams"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "p2pMacAddress"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 87
    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 94
    new-instance v2, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v2, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 108
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    .line 109
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 110
    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 111
    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 112
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter;

    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    const-string v2, "connection-type"

    invoke-direct {v0, v2, v1}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    const-string v1, "initparams"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 113
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 170
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 171
    return-void
.end method

.method public whitelist addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V
    .locals 2
    .param p1, "groupKey"    # Ljava/lang/String;
    .param p2, "parameter"    # Landroid/hardware/display/SemWifiDisplayParameter;

    .line 190
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 191
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 192
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :cond_0
    return-void
.end method

.method public whitelist addParameters(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "groupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 206
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 207
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 208
    .local v2, "parameter":Landroid/hardware/display/SemWifiDisplayParameter;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v2    # "parameter":Landroid/hardware/display/SemWifiDisplayParameter;
    :cond_0
    goto :goto_0

    .line 213
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :cond_1
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConnectionType()I
    .locals 1

    .line 290
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    return v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFlags()I
    .locals 1

    .line 232
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    return v0
.end method

.method public whitelist getIpAddress()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getJasonArrayParameters(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 311
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 312
    .local v0, "jArray":Lorg/json/JSONArray;
    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 313
    .local v2, "param":Landroid/hardware/display/SemWifiDisplayParameter;
    const-string v3, "initparams"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayParameter;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 316
    :catch_0
    move-exception v3

    .line 317
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 318
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_2

    .line 320
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayParameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 322
    .end local v2    # "param":Landroid/hardware/display/SemWifiDisplayParameter;
    :goto_2
    goto :goto_0

    .line 323
    :cond_1
    return-object v0
.end method

.method public whitelist getMode()I
    .locals 1

    .line 241
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    return v0
.end method

.method public whitelist getP2pMacAddress()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPort()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isInitiateMirroringMode()Z
    .locals 1

    .line 297
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPinRequest()Z
    .locals 1

    .line 304
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 179
    iput p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 180
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter;

    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    const-string/jumbo v2, "mode"

    invoke-direct {v0, v2, v1}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    const-string v1, "initparams"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 181
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 373
    const-string v0, "SemWifiDisplayConfig:: "

    .line 374
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "p2pMacAddr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipAddr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectionType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 383
    const-string v3, "initparams"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 384
    const-string v3, "getparams"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 385
    const-string/jumbo v3, "setparams"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 354
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v1, "initparams"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 362
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v1, "getparams"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 363
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string/jumbo v1, "setparams"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 364
    return-void
.end method

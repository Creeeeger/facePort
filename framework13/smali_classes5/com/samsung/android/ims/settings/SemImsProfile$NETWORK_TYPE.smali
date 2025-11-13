.class public final enum Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
.super Ljava/lang/Enum;
.source "SemImsProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/settings/SemImsProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETWORK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist ALL:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist CDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist EDGE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist EHRPD:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist EVDO_0:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist EVDO_A:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist EVDO_B:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist GPRS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist GSM:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist HSDPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist HSPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist HSPAP:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist HSUPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist LTE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist NR:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist TDSCDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist UMTS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist WIFI:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

.field public static final enum whitelist _1XRTT:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;


# instance fields
.field private blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmType(Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->mType:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 23

    .line 216
    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v1, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v3, "GPRS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->GPRS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v3, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v5, "EDGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EDGE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v5, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v7, "UMTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UMTS:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v7, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v9, "CDMA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->CDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v9, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v11, "EVDO_0"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EVDO_0:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v11, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v13, "EVDO_A"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EVDO_A:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v13, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v15, "_1XRTT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->_1XRTT:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v15, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v14, "HSDPA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSDPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    .line 217
    new-instance v14, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v12, "HSUPA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSUPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v12, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v10, "HSPA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSPA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v10, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v8, "EVDO_B"

    const/16 v6, 0xb

    const/16 v4, 0xc

    invoke-direct {v10, v8, v6, v4}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EVDO_B:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v8, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v6, "LTE"

    const/16 v2, 0xd

    invoke-direct {v8, v6, v4, v2}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->LTE:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v6, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v4, "EHRPD"

    move-object/from16 v16, v8

    const/16 v8, 0xe

    invoke-direct {v6, v4, v2, v8}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->EHRPD:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v4, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v2, "HSPAP"

    move-object/from16 v17, v6

    const/16 v6, 0xf

    invoke-direct {v4, v2, v8, v6}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->HSPAP:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v8, "GSM"

    move-object/from16 v18, v4

    const/16 v4, 0x10

    invoke-direct {v2, v8, v6, v4}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->GSM:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v8, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v6, "TDSCDMA"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v8, v6, v4, v2}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->TDSCDMA:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    .line 218
    new-instance v6, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v4, "WIFI"

    move-object/from16 v20, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v2, v8}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->WIFI:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v4, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v2, "NR"

    move-object/from16 v21, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v8, v6}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->NR:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    new-instance v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const-string v8, "ALL"

    const/16 v6, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x64

    invoke-direct {v2, v8, v6, v4}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->ALL:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    .line 215
    const/16 v4, 0x14

    new-array v4, v4, [Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v2, v4, v6

    sput-object v4, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->$VALUES:[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 220
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->mType:I

    .line 223
    iput p3, p0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->mType:I

    .line 224
    return-void
.end method

.method public static whitelist from(I)Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    .locals 5
    .param p0, "type"    # I

    .line 232
    invoke-static {}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->values()[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 233
    .local v3, "n":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    iget v4, v3, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->mType:I

    if-ne v4, p0, :cond_0

    .line 234
    return-object v3

    .line 232
    .end local v3    # "n":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_1
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-object v0
.end method

.method public static whitelist from(Ljava/lang/String;)Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    .locals 5
    .param p0, "typeName"    # Ljava/lang/String;

    .line 247
    invoke-static {}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->values()[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 248
    .local v3, "n":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    invoke-virtual {v3}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    return-object v3

    .line 247
    .end local v3    # "n":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_1
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 215
    const-class v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    .locals 1

    .line 215
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->$VALUES:[Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    return-object v0
.end method


# virtual methods
.method public varargs whitelist isOneOf([Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;)Z
    .locals 4
    .param p1, "types"    # [Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    .line 282
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 283
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 284
    .local v3, "type":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    if-ne p0, v3, :cond_0

    .line 285
    const/4 v0, 0x1

    return v0

    .line 283
    .end local v3    # "type":Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_1
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 262
    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$2;->$SwitchMap$com$samsung$android$ims$settings$SemImsProfile$NETWORK_TYPE:[I

    invoke-virtual {p0}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 270
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .local v0, "rtn":Ljava/lang/String;
    goto :goto_0

    .line 267
    .end local v0    # "rtn":Ljava/lang/String;
    :pswitch_0
    const-string v0, "hspa+"

    .line 268
    .restart local v0    # "rtn":Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v0    # "rtn":Ljava/lang/String;
    :pswitch_1
    const-string v0, "1xrtt"

    .line 265
    .restart local v0    # "rtn":Ljava/lang/String;
    nop

    .line 273
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final enum Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_4G_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_UNSPECIFIED:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

.field public static final enum PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_UNSPECIFIED:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v2, "ENABLED_NETWORKS_UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v3, "ENABLED_NETWORKS_CDMA_CHOICES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v4, "ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v4, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v5, "ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v5, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v6, "ENABLED_NETWORKS_TDSCDMA_CHOICES"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v6, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v7, "ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v7, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v8, "ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v8, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v9, "ENABLED_NETWORKS_EXCEPT_GSM_CHOICES"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v9, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v10, "ENABLED_NETWORKS_EXCEPT_LTE_CHOICES"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v10, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v11, "ENABLED_NETWORKS_4G_CHOICES"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v11, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v12, "ENABLED_NETWORKS_CHOICES"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v12, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v13, "PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v13, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v14, "ENABLED_NETWORKS_4G_CHOICES_EXCEPT_GSM_3G"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    new-instance v14, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const-string v15, "ENABLED_NETWORKS_CHOICES_EXCEPT_GSM_3G"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v13}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-object/from16 v13, v16

    filled-new-array/range {v0 .. v14}, [Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->$VALUES:[Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_UNSPECIFIED:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;
    .locals 1

    const-class v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;
    .locals 1

    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->$VALUES:[Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    invoke-virtual {v0}, [Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->value:I

    return p0
.end method

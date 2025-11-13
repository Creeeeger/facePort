.class public final enum Lcom/android/internal/telephony/IccCardConstants$State;
.super Ljava/lang/Enum;
.source "IccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/IccCardConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist PRESENT:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist REGIONAL_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum blacklist SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum greylist UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 20

    .line 83
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 85
    new-instance v1, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v3, "ABSENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 87
    new-instance v3, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "PIN_REQUIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 89
    new-instance v5, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v7, "PUK_REQUIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 91
    new-instance v7, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v9, "NETWORK_LOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 93
    new-instance v9, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v11, "READY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 95
    new-instance v11, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v13, "NOT_READY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 97
    new-instance v13, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v15, "PERM_DISABLED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 99
    new-instance v15, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v14, "CARD_IO_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 101
    new-instance v14, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v12, "CARD_RESTRICTED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 103
    new-instance v12, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v10, "LOADED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 104
    new-instance v10, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v8, "PRESENT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PRESENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 106
    new-instance v8, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v6, "PERSO_LOCKED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 107
    new-instance v6, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v4, "NETWORK_SUBSET_LOCKED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 108
    new-instance v4, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v2, "SIM_SERVICE_PROVIDER_LOCKED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 109
    new-instance v2, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v6, "REGIONAL_LOCKED"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->REGIONAL_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 110
    new-instance v6, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v4, "DETECTED"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 80
    const/16 v4, 0x11

    new-array v4, v4, [Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v16, 0x0

    aput-object v0, v4, v16

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

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 134
    packed-switch p0, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 152
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 151
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->REGIONAL_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 150
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 149
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 148
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 147
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PRESENT:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 145
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 144
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 143
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 142
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 141
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 140
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 139
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 138
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 137
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 136
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 135
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    const-class v0, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .line 80
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardConstants$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method


# virtual methods
.method public blacklist iccCardExist()Z
    .locals 1

    .line 124
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isPinLocked()Z
    .locals 3

    .line 115
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 118
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.class public final enum Lcom/android/systemui/volume/util/SALoggingWrapper$Event;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/util/SALoggingWrapper$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum EXPAND:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_ACCESSIBILITY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_BIXBY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_MEDIA:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_NOTIFICATION:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_RINGTONE:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_SYSTEM:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum MEDIA_DEFAULT_OFF:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum MEDIA_DEFAULT_ON:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SAFETY_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SAFETY_OK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SHRINK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SUB_VOLUME_PANEL_FINE_CONTROL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SUB_VOLUME_PANEL_SHOW:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum VOLUME_LIMITER_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum VOLUME_LIMITER_SETTING:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v1, "EXPAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->EXPAND:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v2, "SHRINK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SHRINK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v2, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v3, "MEDIA_DEFAULT_ON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_ON:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v3, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v4, "MEDIA_DEFAULT_OFF"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_OFF:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v4, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v5, "SAFETY_CANCEL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v5, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v6, "SAFETY_OK"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_OK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v6, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v7, "VOLUME_LIMITER_SETTING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_SETTING:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v7, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v8, "VOLUME_LIMITER_CANCEL"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v8, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v9, "FINE_CONTROL_RINGTONE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_RINGTONE:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v9, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v10, "FINE_CONTROL_NOTIFICATION"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_NOTIFICATION:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v10, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v11, "FINE_CONTROL_MEDIA"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_MEDIA:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v11, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v12, "FINE_CONTROL_SYSTEM"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_SYSTEM:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v12, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v13, "FINE_CONTROL_BIXBY"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_BIXBY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v13, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v14, "FINE_CONTROL_ACCESSIBILITY"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_ACCESSIBILITY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v14, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v15, "SUB_VOLUME_PANEL_SHOW"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SUB_VOLUME_PANEL_SHOW:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    new-instance v15, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v13, "SUB_VOLUME_PANEL_FINE_CONTROL"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SUB_VOLUME_PANEL_FINE_CONTROL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->$VALUES:[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/util/SALoggingWrapper$Event;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->$VALUES:[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    return-object v0
.end method

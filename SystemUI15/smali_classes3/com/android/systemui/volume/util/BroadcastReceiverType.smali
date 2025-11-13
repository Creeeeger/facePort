.class public final enum Lcom/android/systemui/volume/util/BroadcastReceiverType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/util/BroadcastReceiverType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum A2DP_ACTIVE_DEVICE_CHANGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum ALLSOUND_OFF:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum AOD:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum BUDS_ICON_SERVER_CHANGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum BUDS_TOGETHER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum DISPLAY_MANAGER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum DUAL_AUDIO_MODE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum HDMI_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum HEADSET_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum MIRROR_LINK:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum MUSIC_SHARE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum OPEN_THEME:Lcom/android/systemui/volume/util/BroadcastReceiverType;

.field public static final enum UNINSTALL_PACKAGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v1, "DISPLAY_MANAGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DISPLAY_MANAGER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v2, "ALLSOUND_OFF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->ALLSOUND_OFF:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v3, "MIRROR_LINK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MIRROR_LINK:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v3, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v4, "BUDS_TOGETHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/volume/util/BroadcastReceiverType;->BUDS_TOGETHER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v4, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v5, "MUSIC_SHARE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MUSIC_SHARE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v5, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v6, "DUAL_AUDIO_MODE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DUAL_AUDIO_MODE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v6, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v7, "OPEN_THEME"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/volume/util/BroadcastReceiverType;->OPEN_THEME:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v7, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v8, "AOD"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/volume/util/BroadcastReceiverType;->AOD:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v8, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v9, "HEADSET_CONNECTION"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/volume/util/BroadcastReceiverType;->HEADSET_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v9, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v10, "A2DP_ACTIVE_DEVICE_CHANGE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/volume/util/BroadcastReceiverType;->A2DP_ACTIVE_DEVICE_CHANGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v10, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v11, "BUDS_ICON_SERVER_CHANGE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/volume/util/BroadcastReceiverType;->BUDS_ICON_SERVER_CHANGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v11, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v12, "UNINSTALL_PACKAGE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/volume/util/BroadcastReceiverType;->UNINSTALL_PACKAGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v12, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    const-string v13, "HDMI_CONNECTION"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/volume/util/BroadcastReceiverType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/volume/util/BroadcastReceiverType;->HDMI_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    filled-new-array/range {v0 .. v12}, [Lcom/android/systemui/volume/util/BroadcastReceiverType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/util/BroadcastReceiverType;->$VALUES:[Lcom/android/systemui/volume/util/BroadcastReceiverType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/util/BroadcastReceiverType;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/BroadcastReceiverType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/util/BroadcastReceiverType;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/util/BroadcastReceiverType;->$VALUES:[Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/util/BroadcastReceiverType;

    return-object v0
.end method

.class public final enum Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;
.super Ljava/lang/Enum;
.source "GtsResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/gts/GtsResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GtsGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_ADVANCED:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_CONNECTIONS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_DATA_USAGE:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_DISPLAY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_LOCKSCREEN:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_MOUSE_AND_TRACKPAD:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_NOTIFICATIONS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_ONE_HANDED_OPERATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_OTHERS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_SOUNDS_SYSTEM_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_SOUNDS_VOLUME:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_VIBRATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_VIBRATION_INTENSITY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_VIBRATION_SYSTEM:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;


# instance fields
.field private mGroupName:Ljava/lang/String;

.field private mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 38
    new-instance v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v1, Lcom/android/settings/R$string;->tab_category_connections:I

    const-string v2, "GROUP_KEY_CONNECTIONS"

    const/4 v3, 0x0

    const-string v4, "com.samsung.android.settings.gts.category.CONNECTIONS"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_CONNECTIONS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 39
    new-instance v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v2, Lcom/android/settings/R$string;->data_usage_summary_title:I

    const-string v4, "GROUP_KEY_DATA_USAGE"

    const/4 v5, 0x1

    const-string v6, "com.samsung.android.settings.gts.category.DATA_USAGE"

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_DATA_USAGE:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 40
    new-instance v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v4, Lcom/android/settings/R$string;->display_settings_title:I

    const-string v6, "GROUP_KEY_DISPLAY"

    const/4 v7, 0x2

    const-string v8, "com.samsung.android.settings.gts.category.DISPLAY"

    invoke-direct {v2, v6, v7, v8, v4}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_DISPLAY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 41
    new-instance v4, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v6, Lcom/android/settings/R$string;->lockscreen:I

    const-string v8, "GROUP_KEY_LOCKSCREEN"

    const/4 v9, 0x3

    const-string v10, "com.samsung.android.settings.gts.category.LOCKSCREEN"

    invoke-direct {v4, v8, v9, v10, v6}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_LOCKSCREEN:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 42
    new-instance v6, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v8, Lcom/android/settings/R$string;->configure_notification_settings:I

    const-string v10, "GROUP_KEY_NOTIFICATIONS"

    const/4 v11, 0x4

    const-string v12, "com.samsung.android.settings.gts.category.NOTIFICATIONS"

    invoke-direct {v6, v10, v11, v12, v8}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_NOTIFICATIONS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 43
    new-instance v8, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v10, Lcom/android/settings/R$string;->sec_sound_mode_sound:I

    const-string v12, "GROUP_KEY_SOUNDS"

    const/4 v13, 0x5

    const-string v14, "com.samsung.android.settings.gts.category.SOUNDS"

    invoke-direct {v8, v12, v13, v14, v10}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 44
    new-instance v10, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v12, Lcom/android/settings/R$string;->sec_system_sound_category:I

    const-string v14, "GROUP_KEY_SOUNDS_SYSTEM_SOUNDS"

    const/4 v15, 0x6

    const-string v13, "com.samsung.android.settings.gts.category.SOUNDS_SYSTEM_SOUNDS"

    invoke-direct {v10, v14, v15, v13, v12}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS_SYSTEM_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 45
    new-instance v12, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v13, Lcom/android/settings/R$string;->sec_volume_title:I

    const-string v14, "GROUP_KEY_SOUNDS_VOLUME"

    const/4 v15, 0x7

    const-string v11, "com.samsung.android.settings.gts.category.SOUNDS_VOLUME"

    invoke-direct {v12, v14, v15, v11, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS_VOLUME:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 46
    new-instance v11, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v13, Lcom/android/settings/R$string;->sec_sound_mode_vibrate:I

    const-string v14, "GROUP_KEY_VIBRATION"

    const/16 v15, 0x8

    const-string v9, "com.samsung.android.settings.gts.category.VIBRATION"

    invoke-direct {v11, v14, v15, v9, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 47
    new-instance v9, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v13, Lcom/android/settings/R$string;->sec_vibration_system_title:I

    const-string v14, "GROUP_KEY_VIBRATION_SYSTEM"

    const/16 v15, 0x9

    const-string v7, "com.samsung.android.settings.gts.category.VIBRATION_SYSTEM"

    invoke-direct {v9, v14, v15, v7, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION_SYSTEM:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 48
    new-instance v7, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v13, Lcom/android/settings/R$string;->sec_vibration_intensity:I

    const-string v14, "GROUP_KEY_VIBRATION_INTENSITY"

    const/16 v15, 0xa

    const-string v5, "com.samsung.android.settings.gts.category.VIBRATION_INTENSITY"

    invoke-direct {v7, v14, v15, v5, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION_INTENSITY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 49
    new-instance v5, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v13, Lcom/android/settings/R$string;->useful_feature_title:I

    const-string v14, "GROUP_KEY_ADVANCED"

    const/16 v15, 0xb

    const-string v3, "com.samsung.android.settings.gts.category.ADVANCED"

    invoke-direct {v5, v14, v15, v3, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_ADVANCED:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 50
    new-instance v3, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v13, Lcom/android/settings/R$string;->onehand_settings_title:I

    const-string v14, "GROUP_KEY_ONE_HANDED_OPERATION"

    const/16 v15, 0xc

    move-object/from16 v16, v5

    const-string v5, "com.samsung.android.settings.gts.category.ONE_HANDED_OPERATION"

    invoke-direct {v3, v14, v15, v5, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_ONE_HANDED_OPERATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 51
    new-instance v5, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v13, Lcom/android/settings/R$string;->pointer_settings_category:I

    const-string v14, "GROUP_KEY_MOUSE_AND_TRACKPAD"

    const/16 v15, 0xd

    move-object/from16 v17, v3

    const-string v3, "com.samsung.android.settings.gts.category.MOUSE_AND_TRACKPAD"

    invoke-direct {v5, v14, v15, v3, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_MOUSE_AND_TRACKPAD:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 52
    new-instance v3, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget v13, Lcom/android/settings/R$string;->sec_others_group_title:I

    const-string v14, "GROUP_KEY_OTHERS"

    const/16 v15, 0xe

    move-object/from16 v18, v5

    const-string v5, "com.samsung.android.settings.gts.category.OTHERS"

    invoke-direct {v3, v14, v15, v5, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_OTHERS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const/16 v5, 0xf

    new-array v5, v5, [Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const/4 v13, 0x0

    aput-object v0, v5, v13

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    const/16 v0, 0xa

    aput-object v7, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v17, v5, v0

    const/16 v0, 0xd

    aput-object v18, v5, v0

    aput-object v3, v5, v15

    .line 37
    sput-object v5, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->$VALUES:[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->mGroupName:Ljava/lang/String;

    .line 60
    iput p4, p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->mTitleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;
    .locals 1

    .line 37
    const-class v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;
    .locals 1

    .line 37
    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->$VALUES:[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    return-object v0
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleResId()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->mTitleResId:I

    return p0
.end method

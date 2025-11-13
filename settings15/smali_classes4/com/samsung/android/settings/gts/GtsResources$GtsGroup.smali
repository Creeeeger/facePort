.class public final enum Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_ADVANCED:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_DISPLAY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_MOUSE_AND_TRACKPAD:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_NOTIFICATIONS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

.field public static final enum GROUP_KEY_ONE_HANDED_OPERATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

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

    new-instance v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v1, "GROUP_KEY_CONNECTIONS"

    const/4 v2, 0x0

    const-string v3, "com.samsung.android.settings.gts.category.CONNECTIONS"

    const v4, 0x7f142e45

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v2, "GROUP_KEY_DATA_USAGE"

    const/4 v3, 0x1

    const-string v4, "com.samsung.android.settings.gts.category.DATA_USAGE"

    const v5, 0x7f140bc4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v3, "GROUP_KEY_DISPLAY"

    const/4 v4, 0x2

    const-string v5, "com.samsung.android.settings.gts.category.DISPLAY"

    const v6, 0x7f140d29

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_DISPLAY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v3, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v4, "GROUP_KEY_LOCKSCREEN"

    const/4 v5, 0x3

    const-string v6, "com.samsung.android.settings.gts.category.LOCKSCREEN"

    const v7, 0x7f141634

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v5, "GROUP_KEY_NOTIFICATIONS"

    const/4 v6, 0x4

    const-string v7, "com.samsung.android.settings.gts.category.NOTIFICATIONS"

    const v8, 0x7f140a3a

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_NOTIFICATIONS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v5, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v6, "GROUP_KEY_SOUNDS"

    const/4 v7, 0x5

    const-string v8, "com.samsung.android.settings.gts.category.SOUNDS"

    const v9, 0x7f1427a2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v6, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v7, "GROUP_KEY_SOUNDS_SYSTEM_SOUNDS"

    const/4 v8, 0x6

    const-string v9, "com.samsung.android.settings.gts.category.SOUNDS_SYSTEM_SOUNDS"

    const v10, 0x7f1427db

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS_SYSTEM_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v7, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v8, "GROUP_KEY_SOUNDS_VOLUME"

    const/4 v9, 0x7

    const-string v10, "com.samsung.android.settings.gts.category.SOUNDS_VOLUME"

    const v11, 0x7f14286b

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS_VOLUME:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v8, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v9, "GROUP_KEY_VIBRATION"

    const/16 v10, 0x8

    const-string v11, "com.samsung.android.settings.gts.category.VIBRATION"

    const v12, 0x7f1427a3

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v9, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v10, "GROUP_KEY_VIBRATION_SYSTEM"

    const/16 v11, 0x9

    const-string v12, "com.samsung.android.settings.gts.category.VIBRATION_SYSTEM"

    const v13, 0x7f142851

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION_SYSTEM:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v10, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v11, "GROUP_KEY_VIBRATION_INTENSITY"

    const/16 v12, 0xa

    const-string v13, "com.samsung.android.settings.gts.category.VIBRATION_INTENSITY"

    const v14, 0x7f142848

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION_INTENSITY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v11, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v12, "GROUP_KEY_ADVANCED"

    const/16 v13, 0xb

    const-string v14, "com.samsung.android.settings.gts.category.ADVANCED"

    const v15, 0x7f1430cc

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_ADVANCED:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v12, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v13, "GROUP_KEY_ONE_HANDED_OPERATION"

    const/16 v14, 0xc

    const-string v15, "com.samsung.android.settings.gts.category.ONE_HANDED_OPERATION"

    move-object/from16 v16, v11

    const v11, 0x7f141b6a

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_ONE_HANDED_OPERATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v13, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v11, "GROUP_KEY_MOUSE_AND_TRACKPAD"

    const/16 v14, 0xd

    const-string v15, "com.samsung.android.settings.gts.category.MOUSE_AND_TRACKPAD"

    move-object/from16 v17, v12

    const v12, 0x7f141c4c

    invoke-direct {v13, v11, v14, v15, v12}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_MOUSE_AND_TRACKPAD:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    new-instance v14, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v11, "GROUP_KEY_OTHERS"

    const/16 v12, 0xe

    const-string v15, "com.samsung.android.settings.gts.category.OTHERS"

    move-object/from16 v18, v13

    const v13, 0x7f14262b

    invoke-direct {v14, v11, v12, v15, v13}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    filled-new-array/range {v0 .. v14}, [Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->$VALUES:[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->mGroupName:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->mTitleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->$VALUES:[Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    return-object v0
.end method


# virtual methods
.method public final getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitleResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->mTitleResId:I

    return p0
.end method

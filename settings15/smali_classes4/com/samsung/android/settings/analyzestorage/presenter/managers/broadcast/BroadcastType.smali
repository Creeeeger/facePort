.class public final enum Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public static final enum CACHED_FILES_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public static final enum LOCALE_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public static final enum MEDIA_EJECTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public static final enum MEDIA_MOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public static final enum MEDIA_REMOVED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public static final enum MEDIA_UNMOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public static final enum NEED_REFRESH:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public static final enum TIMEZONE_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

.field public static final enum TRASH_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v1, "MEDIA_MOUNTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_MOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v2, "MEDIA_EJECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_EJECTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v3, "MEDIA_UNMOUNTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_UNMOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v4, "MEDIA_REMOVED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_REMOVED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v5, "TRASH_CHANGED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->TRASH_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v6, "CACHED_FILES_CHANGED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->CACHED_FILES_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v7, "TIMEZONE_CHANGED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->TIMEZONE_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v8, "LOCALE_CHANGED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->LOCALE_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v9, "ADD_OBSERVER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v10, "NEED_REFRESH"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->NEED_REFRESH:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    new-instance v10, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v11, "ONE_DRIVE_SESSION_EXPIRED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    const-string v12, "PERMISSION_CHANGED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v11}, [Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    return-object v0
.end method

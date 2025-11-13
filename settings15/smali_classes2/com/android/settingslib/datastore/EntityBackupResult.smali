.class public final enum Lcom/android/settingslib/datastore/EntityBackupResult;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settingslib/datastore/EntityBackupResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/android/settingslib/datastore/EntityBackupResult;",
        "",
        "frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settingslib/datastore/EntityBackupResult;

.field public static final enum DELETE:Lcom/android/settingslib/datastore/EntityBackupResult;

.field public static final enum UPDATE:Lcom/android/settingslib/datastore/EntityBackupResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settingslib/datastore/EntityBackupResult;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settingslib/datastore/EntityBackupResult;->UPDATE:Lcom/android/settingslib/datastore/EntityBackupResult;

    new-instance v1, Lcom/android/settingslib/datastore/EntityBackupResult;

    const-string v2, "INTACT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/settingslib/datastore/EntityBackupResult;

    const-string v3, "DELETE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settingslib/datastore/EntityBackupResult;->DELETE:Lcom/android/settingslib/datastore/EntityBackupResult;

    filled-new-array {v0, v1, v2}, [Lcom/android/settingslib/datastore/EntityBackupResult;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/datastore/EntityBackupResult;->$VALUES:[Lcom/android/settingslib/datastore/EntityBackupResult;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settingslib/datastore/EntityBackupResult;
    .locals 1

    const-class v0, Lcom/android/settingslib/datastore/EntityBackupResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/datastore/EntityBackupResult;

    return-object p0
.end method

.method public static values()[Lcom/android/settingslib/datastore/EntityBackupResult;
    .locals 1

    sget-object v0, Lcom/android/settingslib/datastore/EntityBackupResult;->$VALUES:[Lcom/android/settingslib/datastore/EntityBackupResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingslib/datastore/EntityBackupResult;

    return-object v0
.end method

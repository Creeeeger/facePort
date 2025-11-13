.class public final Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Games;
.super Lcom/android/settings/spa/app/storage/StorageAppListPageProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Games;

.field public static final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Games;

    sget-object v1, Lcom/android/settings/spa/app/storage/StorageType$Games;->INSTANCE:Lcom/android/settings/spa/app/storage/StorageType$Games;

    invoke-direct {v0, v1}, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider;-><init>(Lcom/android/settings/spa/app/storage/StorageType;)V

    sput-object v0, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Games;->INSTANCE:Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Games;

    const-string v0, "GameStorageAppList"

    sput-object v0, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Games;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Games;->name:Ljava/lang/String;

    return-object p0
.end method

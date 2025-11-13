.class final enum Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

.field public static final enum COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

.field public static final enum NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

.field public static final enum RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const-string v1, "NOT_COMPUTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const-string v2, "COMPUTING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const-string v3, "RECURSION_WAS_DETECTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    return-object v0
.end method

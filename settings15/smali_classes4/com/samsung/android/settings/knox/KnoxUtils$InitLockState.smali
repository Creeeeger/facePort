.class final enum Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum NONE:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public static final enum VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->NONE:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v2, "VERIFIED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance v2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v3, "SA_CHANGED_LOCK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance v3, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v4, "SA_REMOVED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance v4, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const-string v5, "VERIFICATION_FAILED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->$VALUES:[Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->$VALUES:[Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    return-object v0
.end method

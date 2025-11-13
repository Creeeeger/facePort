.class public final enum Lcom/android/settings/Utils$BiometricStatus;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/Utils$BiometricStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/Utils$BiometricStatus;

.field public static final enum ERROR:Lcom/android/settings/Utils$BiometricStatus;

.field public static final enum LOCKOUT:Lcom/android/settings/Utils$BiometricStatus;

.field public static final enum NOT_ACTIVE:Lcom/android/settings/Utils$BiometricStatus;

.field public static final enum OK:Lcom/android/settings/Utils$BiometricStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/settings/Utils$BiometricStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/Utils$BiometricStatus;->OK:Lcom/android/settings/Utils$BiometricStatus;

    new-instance v1, Lcom/android/settings/Utils$BiometricStatus;

    const-string v2, "NOT_ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/Utils$BiometricStatus;->NOT_ACTIVE:Lcom/android/settings/Utils$BiometricStatus;

    new-instance v2, Lcom/android/settings/Utils$BiometricStatus;

    const-string v3, "LOCKOUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settings/Utils$BiometricStatus;->LOCKOUT:Lcom/android/settings/Utils$BiometricStatus;

    new-instance v3, Lcom/android/settings/Utils$BiometricStatus;

    const-string v4, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/Utils$BiometricStatus;->ERROR:Lcom/android/settings/Utils$BiometricStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/settings/Utils$BiometricStatus;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils$BiometricStatus;->$VALUES:[Lcom/android/settings/Utils$BiometricStatus;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/Utils$BiometricStatus;
    .locals 1

    const-class v0, Lcom/android/settings/Utils$BiometricStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/Utils$BiometricStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/Utils$BiometricStatus;
    .locals 1

    sget-object v0, Lcom/android/settings/Utils$BiometricStatus;->$VALUES:[Lcom/android/settings/Utils$BiometricStatus;

    invoke-virtual {v0}, [Lcom/android/settings/Utils$BiometricStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/Utils$BiometricStatus;

    return-object v0
.end method

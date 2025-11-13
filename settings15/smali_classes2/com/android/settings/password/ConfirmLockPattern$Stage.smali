.class final enum Lcom/android/settings/password/ConfirmLockPattern$Stage;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ConfirmLockPattern$Stage;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/password/ConfirmLockPattern$Stage;

.field public static final enum LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

.field public static final enum NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

.field public static final enum NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPattern$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;

    const-string v1, "NeedToUnlock"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    new-instance v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;

    const-string v2, "NeedToUnlockWrong"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    new-instance v2, Lcom/android/settings/password/ConfirmLockPattern$Stage;

    const-string v3, "LockedOut"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settings/password/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->$VALUES:[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ConfirmLockPattern$Stage;
    .locals 1

    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ConfirmLockPattern$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ConfirmLockPattern$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->$VALUES:[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ConfirmLockPattern$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ConfirmLockPattern$Stage;

    return-object v0
.end method

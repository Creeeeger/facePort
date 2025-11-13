.class public final enum Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

.field public static final enum DELETE_PS_ERROR_INTERNAL:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

.field public static final enum DELETE_PS_ERROR_NONE:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

.field public static final enum DELETE_PS_ERROR_NO_PRIVATE_SPACE:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    const-string v1, "DELETE_PS_ERROR_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->DELETE_PS_ERROR_NONE:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    new-instance v1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    const-string v2, "DELETE_PS_ERROR_NO_PRIVATE_SPACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->DELETE_PS_ERROR_NO_PRIVATE_SPACE:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    new-instance v2, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    const-string v3, "DELETE_PS_ERROR_INTERNAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->DELETE_PS_ERROR_INTERNAL:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    move-result-object v0

    sput-object v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->$VALUES:[Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;
    .locals 1

    const-class v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;
    .locals 1

    sget-object v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->$VALUES:[Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    invoke-virtual {v0}, [Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;

    return-object v0
.end method

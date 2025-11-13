.class final enum Lcom/android/settings/UserCredentialsSettings$Credential$Type;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;


# instance fields
.field final prefix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string v1, "CACERT_"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "CA_CERTIFICATE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    new-instance v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string v2, "USRCERT_"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "USER_CERTIFICATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    new-instance v2, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string v3, "USRPKEY_"

    const-string v4, "USRSKEY_"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "USER_KEY"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v2, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    move-result-object v0

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->prefix:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    .locals 1

    const-class v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    .locals 1

    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0}, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-object v0
.end method

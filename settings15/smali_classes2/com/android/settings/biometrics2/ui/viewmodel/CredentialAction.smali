.class public final enum Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;",
        "",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

.field public static final enum CREDENTIAL_VALID:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

.field public static final enum FAIL_NEED_TO_CHOOSE_LOCK:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

.field public static final enum FAIL_NEED_TO_CONFIRM_LOCK:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

.field public static final enum IS_GENERATING_CHALLENGE:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    const-string v1, "CREDENTIAL_VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->CREDENTIAL_VALID:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    new-instance v1, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    const-string v2, "IS_GENERATING_CHALLENGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->IS_GENERATING_CHALLENGE:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    new-instance v2, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    const-string v3, "FAIL_NEED_TO_CHOOSE_LOCK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->FAIL_NEED_TO_CHOOSE_LOCK:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    new-instance v3, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    const-string v4, "FAIL_NEED_TO_CONFIRM_LOCK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->FAIL_NEED_TO_CONFIRM_LOCK:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->$VALUES:[Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;
    .locals 1

    const-class v0, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;
    .locals 1

    sget-object v0, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->$VALUES:[Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    return-object v0
.end method

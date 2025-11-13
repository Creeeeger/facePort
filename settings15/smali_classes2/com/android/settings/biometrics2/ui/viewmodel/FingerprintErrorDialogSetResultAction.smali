.class public final enum Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;",
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
.field public static final synthetic $VALUES:[Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

.field public static final enum FINGERPRINT_ERROR_DIALOG_ACTION_SET_RESULT_FINISH:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

.field public static final enum FINGERPRINT_ERROR_DIALOG_ACTION_SET_RESULT_TIMEOUT:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    const-string v1, "FINGERPRINT_ERROR_DIALOG_ACTION_SET_RESULT_FINISH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;->FINGERPRINT_ERROR_DIALOG_ACTION_SET_RESULT_FINISH:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    new-instance v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    const-string v2, "FINGERPRINT_ERROR_DIALOG_ACTION_SET_RESULT_TIMEOUT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;->FINGERPRINT_ERROR_DIALOG_ACTION_SET_RESULT_TIMEOUT:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    filled-new-array {v0, v1}, [Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;->$VALUES:[Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;
    .locals 1

    const-class v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;
    .locals 1

    sget-object v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;->$VALUES:[Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    return-object v0
.end method

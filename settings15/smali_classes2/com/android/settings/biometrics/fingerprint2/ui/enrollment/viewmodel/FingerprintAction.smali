.class public final enum Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;",
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
.field public static final synthetic $VALUES:[Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v1, "NEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v2, "PREV"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v3, "CONFIRM_DEVICE_SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v4, "CONFIRM_DEVICE_FAIL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v5, "TRANSITION_FINISHED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v6, "DID_GO_TO_BACKGROUND"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v7, "ACTIVITY_CREATED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v8, "NEGATIVE_BUTTON_PRESSED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v9, "USER_CLICKED_FINISH"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const-string v10, "ADD_ANOTHER"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v9}, [Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;->$VALUES:[Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;
    .locals 1

    const-class v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;
    .locals 1

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;->$VALUES:[Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    return-object v0
.end method

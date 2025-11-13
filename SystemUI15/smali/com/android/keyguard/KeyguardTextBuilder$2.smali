.class public abstract synthetic Lcom/android/keyguard/KeyguardTextBuilder$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType:[I

.field public static final synthetic $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->values()[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType:[I

    sget-object v3, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_REBOOT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType:[I

    sget-object v4, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType:[I

    sget-object v4, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_DEFAULT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    :try_start_4
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

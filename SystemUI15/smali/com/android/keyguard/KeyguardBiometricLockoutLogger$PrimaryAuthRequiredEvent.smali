.class public final enum Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

.field public static final enum PRIMARY_AUTH_REQUIRED_ENCRYPTED_OR_LOCKDOWN:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

.field public static final enum PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

.field public static final enum PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT_RESET:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

.field public static final enum PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

.field public static final enum PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT_RESET:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

.field public static final enum PRIMARY_AUTH_REQUIRED_TIMEOUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

.field public static final enum PRIMARY_AUTH_REQUIRED_UNATTENDED_UPDATE:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    const/4 v1, 0x0

    const/16 v2, 0x39c

    const-string v3, "PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    new-instance v1, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    const/4 v2, 0x1

    const/16 v3, 0x39d

    const-string v4, "PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT_RESET"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FINGERPRINT_LOCKED_OUT_RESET:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    new-instance v2, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    const/4 v3, 0x2

    const/16 v4, 0x39e

    const-string v5, "PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    new-instance v3, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    const/4 v4, 0x3

    const/16 v5, 0x39f

    const-string v6, "PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT_RESET"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_FACE_LOCKED_OUT_RESET:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    new-instance v4, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    const/4 v5, 0x4

    const/16 v6, 0x3a0

    const-string v7, "PRIMARY_AUTH_REQUIRED_ENCRYPTED_OR_LOCKDOWN"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_ENCRYPTED_OR_LOCKDOWN:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    new-instance v5, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    const/4 v6, 0x5

    const/16 v7, 0x3a1

    const-string v8, "PRIMARY_AUTH_REQUIRED_TIMEOUT"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_TIMEOUT:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    new-instance v6, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    const/4 v7, 0x6

    const/16 v8, 0x3a3

    const-string v9, "PRIMARY_AUTH_REQUIRED_UNATTENDED_UPDATE"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->PRIMARY_AUTH_REQUIRED_UNATTENDED_UPDATE:Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    filled-new-array/range {v0 .. v6}, [Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->$VALUES:[Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->$VALUES:[Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$PrimaryAuthRequiredEvent;->mId:I

    return p0
.end method

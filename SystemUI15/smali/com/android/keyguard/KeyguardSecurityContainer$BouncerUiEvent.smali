.class public final enum Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_BIOMETRIC:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_EXTENDED_ACCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_NONE_SECURITY:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_PASSWORD:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_DISMISS_SIM:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_PASSWORD_FAILURE:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum BOUNCER_PASSWORD_SUCCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

.field public static final enum UNKNOWN:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->UNKNOWN:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const/4 v2, 0x1

    const/16 v3, 0x19d

    const-string v4, "BOUNCER_DISMISS_EXTENDED_ACCESS"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_EXTENDED_ACCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const/4 v3, 0x2

    const/16 v4, 0x19e

    const-string v5, "BOUNCER_DISMISS_BIOMETRIC"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_BIOMETRIC:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const/4 v4, 0x3

    const/16 v5, 0x19f

    const-string v6, "BOUNCER_DISMISS_NONE_SECURITY"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_NONE_SECURITY:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v4, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const/4 v5, 0x4

    const/16 v6, 0x1a0

    const-string v7, "BOUNCER_DISMISS_PASSWORD"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_PASSWORD:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const/4 v6, 0x5

    const/16 v7, 0x1a1

    const-string v8, "BOUNCER_DISMISS_SIM"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_SIM:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v6, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const/4 v7, 0x6

    const/16 v8, 0x1a2

    const-string v9, "BOUNCER_PASSWORD_SUCCESS"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_SUCCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    new-instance v7, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    const/4 v8, 0x7

    const/16 v9, 0x1a3

    const-string v10, "BOUNCER_PASSWORD_FAILURE"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_FAILURE:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    filled-new-array/range {v0 .. v7}, [Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

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

    iput p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->mId:I

    return p0
.end method

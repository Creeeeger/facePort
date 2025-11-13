.class public final enum Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_DEFAULT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_REBOOT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public static final enum KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v1, "KEYGUARD_DISMISS_ACTION_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_DEFAULT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    new-instance v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v2, "KEYGUARD_DISMISS_ACTION_SHUTDOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    new-instance v2, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v3, "KEYGUARD_DISMISS_ACTION_REBOOT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_REBOOT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    new-instance v3, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    const-string v4, "KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-object v0
.end method

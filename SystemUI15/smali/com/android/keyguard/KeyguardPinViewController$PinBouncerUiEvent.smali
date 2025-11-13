.class final enum Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

.field public static final enum ATTEMPT_UNLOCK_WITH_AUTO_CONFIRM_FEATURE:Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

    const/4 v1, 0x0

    const/16 v2, 0x60b

    const-string v3, "ATTEMPT_UNLOCK_WITH_AUTO_CONFIRM_FEATURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;->ATTEMPT_UNLOCK_WITH_AUTO_CONFIRM_FEATURE:Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

    filled-new-array {v0}, [Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;->$VALUES:[Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

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

    iput p3, p0, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;->$VALUES:[Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/keyguard/KeyguardPinViewController$PinBouncerUiEvent;->mId:I

    return p0
.end method

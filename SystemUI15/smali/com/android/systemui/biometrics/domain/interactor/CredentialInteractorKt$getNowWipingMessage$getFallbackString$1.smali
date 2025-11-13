.class final Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$getFallbackString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $this_getNowWipingMessage:Landroid/content/Context;

.field final synthetic $userType:Lcom/android/systemui/biometrics/domain/interactor/UserType;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/UserType;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$getFallbackString$1;->$userType:Lcom/android/systemui/biometrics/domain/interactor/UserType;

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$getFallbackString$1;->$this_getNowWipingMessage:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$getFallbackString$1;->$userType:Lcom/android/systemui/biometrics/domain/interactor/UserType;

    sget-object v1, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$getFallbackString$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f1306bb

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const v0, 0x7f1306ba

    goto :goto_0

    :cond_2
    const v0, 0x7f1306b8

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$getFallbackString$1;->$this_getNowWipingMessage:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

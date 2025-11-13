.class public final Lcom/android/systemui/keyguard/shared/model/DismissAction$None;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/shared/model/DismissAction;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/shared/model/DismissAction$None;

.field public static final message:Ljava/lang/String;

.field public static final onCancelAction:Lcom/android/systemui/keyguard/shared/model/DismissAction$None$onCancelAction$1;

.field public static final onDismissAction:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;->INSTANCE:Lcom/android/systemui/keyguard/shared/model/DismissAction$None;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None$onDismissAction$1;->INSTANCE:Lcom/android/systemui/keyguard/shared/model/DismissAction$None$onDismissAction$1;

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;->onDismissAction:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None$onCancelAction$1;->INSTANCE:Lcom/android/systemui/keyguard/shared/model/DismissAction$None$onCancelAction$1;

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;->onCancelAction:Lcom/android/systemui/keyguard/shared/model/DismissAction$None$onCancelAction$1;

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;->message:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getOnCancelAction()Ljava/lang/Runnable;
    .locals 0

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;->onCancelAction:Lcom/android/systemui/keyguard/shared/model/DismissAction$None$onCancelAction$1;

    return-object p0
.end method

.method public final getOnDismissAction()Lkotlin/jvm/functions/Function0;
    .locals 0

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$None;->onDismissAction:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getWillAnimateOnLockscreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x48af41eb

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "None"

    return-object p0
.end method

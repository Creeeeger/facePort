.class public final Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger$start$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger$start$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger$start$1$1;

    invoke-direct {v0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger$start$1$1;-><init>()V

    sput-object v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger$start$1$1;->INSTANCE:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger$start$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    sget-object p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLoggerKt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "bouncerMessage: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

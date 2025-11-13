.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsOpened$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsOpened$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsOpened$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsOpened$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsOpened$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsOpened$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsOpened$2;->invoke(Lcom/android/systemui/log/core/LogMessage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/log/core/LogMessage;)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr2()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool1()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr1()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Guts of type "

    const-string v2, " (leave behind: "

    const-string v3, ") opened for class "

    invoke-static {v1, p0, v2, v3, v0}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

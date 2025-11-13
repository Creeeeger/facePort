.class final synthetic Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger$logDefaultConnectionsChanged$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "messagePrinter(Lcom/android/systemui/log/core/LogMessage;)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    const-string v4, "messagePrinter"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool1()Z

    move-result p0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool2()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool3()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool4()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool5()Z

    move-result v3

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result p1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v4, "DefaultConnectionModel(wifi.isDefault="

    const-string v5, ", mobile.isDefault="

    const-string v6, ", carrierMerged.isDefault="

    invoke-static {v4, v5, v6, p0, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", ethernet.isDefault="

    const-string v4, ", btTether.isDefault="

    invoke-static {p0, v1, v0, v2, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isValidated="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

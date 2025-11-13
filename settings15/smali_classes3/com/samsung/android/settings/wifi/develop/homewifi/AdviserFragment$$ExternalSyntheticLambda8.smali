.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda8;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda8;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/HashSet;

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mDefaultNames:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkMultipleSecurity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HomeWifi.AdviserFragment"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/StringBuilder;)V

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

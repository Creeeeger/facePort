.class public final synthetic Lcom/samsung/android/settings/connection/tether/SecTetherSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onTetheredInterfacesChanged() interfaces : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecTetherSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->updateState$2$1()V

    return-void
.end method

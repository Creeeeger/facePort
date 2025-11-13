.class public interface abstract Lcom/android/systemui/bixby2/interactor/ActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getSupportingActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
.end method

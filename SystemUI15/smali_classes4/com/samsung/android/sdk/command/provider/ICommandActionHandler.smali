.class public interface abstract Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract createStatelessCommands()Ljava/util/List;
.end method

.method public abstract loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;
.end method

.method public abstract loadStatefulCommand(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
.end method

.method public abstract migrateCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/action/CommandAction;
.end method

.method public abstract performCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
.end method

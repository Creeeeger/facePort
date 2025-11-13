.class Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;
.super Ljava/lang/Object;
.source "SettingsCommandActionHandler.java"

# interfaces
.implements Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->performCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;

.field final synthetic val$actionCallback:Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;

.field final synthetic val$hasAsyncUpdate:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;ZLcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->this$0:Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;

    iput-boolean p2, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->val$hasAsyncUpdate:Z

    iput-object p3, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->val$actionCallback:Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolved(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->val$hasAsyncUpdate:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->val$actionCallback:Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;

    if-eqz p0, :cond_1

    .line 148
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;->onActionFinished(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

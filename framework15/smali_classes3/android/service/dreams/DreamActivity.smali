.class public Landroid/service/dreams/DreamActivity;
.super Landroid/app/Activity;
.source "DreamActivity.java"


# static fields
.field static final blacklist EXTRA_CALLBACK:Ljava/lang/String; = "binder"

.field static final blacklist EXTRA_DREAM_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private blacklist mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static blacklist getCallback(Landroid/content/Intent;)Landroid/service/dreams/DreamService$DreamActivityCallbacks;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "binder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    instance-of v1, v0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static blacklist getTitle(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setCallback(Landroid/content/Intent;Landroid/service/dreams/DreamService$DreamActivityCallbacks;)V
    .locals 1

    const-string v0, "binder"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    return-void
.end method

.method public static blacklist setTitle(Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/DreamActivity;->getTitle(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/DreamActivity;->getCallback(Landroid/content/Intent;)Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    move-result-object v1

    iput-object v1, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    iget-object v1, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->finishAndRemoveTask()V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    invoke-virtual {v1, p0}, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->onActivityCreated(Landroid/service/dreams/DreamActivity;)V

    return-void
.end method

.method public whitelist onDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamActivity;->mCallback:Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->onActivityDestroyed()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

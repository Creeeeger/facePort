.class public abstract Landroid/service/controls/ControlsProviderService;
.super Landroid/app/Service;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/ControlsProviderService$SubscribeMessage;,
        Landroid/service/controls/ControlsProviderService$ActionMessage;,
        Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;,
        Landroid/service/controls/ControlsProviderService$SubscriberProxy;,
        Landroid/service/controls/ControlsProviderService$RequestHandler;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ADD_CONTROL:Ljava/lang/String; = "android.service.controls.action.ADD_CONTROL"

.field public static final blacklist CALLBACK_BUNDLE:Ljava/lang/String; = "CALLBACK_BUNDLE"

.field public static final blacklist CALLBACK_TOKEN:Ljava/lang/String; = "CALLBACK_TOKEN"

.field public static final blacklist EXTRA_CONTROL:Ljava/lang/String; = "android.service.controls.extra.CONTROL"

.field public static final blacklist EXTRA_CONTROLS:Ljava/lang/String; = "android.service.controls.extra.CONTROLS"

.field public static final blacklist EXTRA_CONTROL_AUTO_ADD:Ljava/lang/String; = "android.service.controls.extra.CONTROL_AUTO_ADD"

.field public static final whitelist SERVICE_CONTROLS:Ljava/lang/String; = "android.service.controls.ControlsProviderService"

.field public static final whitelist TAG:Ljava/lang/String; = "ControlsProviderService"


# instance fields
.field private blacklist mControlsProviderInfoSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandler:Landroid/service/controls/ControlsProviderService$RequestHandler;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmControlsProviderInfoSupplier(Landroid/service/controls/ControlsProviderService;)Ljava/util/function/Supplier;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/ControlsProviderService;->mControlsProviderInfoSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/controls/ControlsProviderService;)Landroid/service/controls/ControlsProviderService$RequestHandler;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/ControlsProviderService;->mHandler:Landroid/service/controls/ControlsProviderService$RequestHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/ControlsProviderService;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisStatelessControl(Landroid/service/controls/Control;)Z
    .locals 0

    invoke-static {p0}, Landroid/service/controls/ControlsProviderService;->isStatelessControl(Landroid/service/controls/Control;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static blacklist isStatelessControl(Landroid/service/controls/Control;)Z
    .locals 1
    .param p0, "control"    # Landroid/service/controls/Control;

    .line 316
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlTemplate;->getTemplateType()I

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0
.end method

.method public static whitelist requestAddControl(Landroid/content/Context;Landroid/content/ComponentName;Landroid/service/controls/Control;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "control"    # Landroid/service/controls/Control;

    .line 393
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const v0, 0x1040304

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "controlsPackage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.controls.action.ADD_CONTROL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 400
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-static {p2}, Landroid/service/controls/ControlsProviderService;->isStatelessControl(Landroid/service/controls/Control;)Z

    move-result v2

    const-string v3, "android.service.controls.extra.CONTROL"

    if-eqz v2, :cond_0

    .line 402
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 404
    :cond_0
    new-instance v2, Landroid/service/controls/Control$StatelessBuilder;

    invoke-direct {v2, p2}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Landroid/service/controls/Control;)V

    invoke-virtual {v2}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 406
    :goto_0
    const-string v2, "android.permission.BIND_CONTROLS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public static blacklist requestAddControl(Landroid/content/Context;Landroid/content/ComponentName;Landroid/service/controls/Control;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "control"    # Landroid/service/controls/Control;
    .param p3, "autoAdd"    # Z

    .line 416
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const v0, 0x1040304

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "controlsPackage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.controls.action.ADD_CONTROL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-static {p2}, Landroid/service/controls/ControlsProviderService;->isStatelessControl(Landroid/service/controls/Control;)Z

    move-result v2

    const-string v3, "android.service.controls.extra.CONTROL"

    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 427
    :cond_0
    new-instance v2, Landroid/service/controls/Control$StatelessBuilder;

    invoke-direct {v2, p2}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Landroid/service/controls/Control;)V

    invoke-virtual {v2}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 429
    :goto_0
    const-string v2, "android.service.controls.extra.CONTROL_AUTO_ADD"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const-string v2, "android.permission.BIND_CONTROLS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public static blacklist requestAddControls(Landroid/content/Context;Landroid/content/ComponentName;Ljava/util/List;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p3, "autoAdd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;Z)V"
        }
    .end annotation

    .line 440
    .local p2, "controls":Ljava/util/List;, "Ljava/util/List<Landroid/service/controls/Control;>;"
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const v0, 0x1040304

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "controlsPackage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.controls.action.ADD_CONTROL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 447
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v2, "controlArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/controls/Control;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/controls/Control;

    .line 450
    .local v4, "control":Landroid/service/controls/Control;
    invoke-static {v4}, Landroid/service/controls/ControlsProviderService;->isStatelessControl(Landroid/service/controls/Control;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    :cond_0
    new-instance v5, Landroid/service/controls/Control$StatelessBuilder;

    invoke-direct {v5, v4}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Landroid/service/controls/Control;)V

    invoke-virtual {v5}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .end local v4    # "control":Landroid/service/controls/Control;
    :goto_1
    goto :goto_0

    .line 456
    :cond_1
    const-string v3, "android.service.controls.extra.CONTROLS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 457
    const-string v3, "android.service.controls.extra.CONTROL_AUTO_ADD"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    const-string v3, "android.permission.BIND_CONTROLS"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 459
    return-void
.end method


# virtual methods
.method public abstract whitelist createPublisherFor(Ljava/util/List;)Ljava/util/concurrent/Flow$Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist createPublisherForAllAvailable()Ljava/util/concurrent/Flow$Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist createPublisherForSuggested()Ljava/util/concurrent/Flow$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 160
    new-instance v0, Landroid/service/controls/ControlsProviderService$RequestHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/controls/ControlsProviderService$RequestHandler;-><init>(Landroid/service/controls/ControlsProviderService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/controls/ControlsProviderService;->mHandler:Landroid/service/controls/ControlsProviderService$RequestHandler;

    .line 162
    const-string v0, "CALLBACK_BUNDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "CALLBACK_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/ControlsProviderService;->mToken:Landroid/os/IBinder;

    .line 165
    new-instance v1, Landroid/service/controls/ControlsProviderService$1;

    invoke-direct {v1, p0}, Landroid/service/controls/ControlsProviderService$1;-><init>(Landroid/service/controls/ControlsProviderService;)V

    return-object v1
.end method

.method public final whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/ControlsProviderService;->mHandler:Landroid/service/controls/ControlsProviderService$RequestHandler;

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist performControlAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/controls/actions/ControlAction;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public blacklist setControlsProviderInfoSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/service/controls/ControlsProviderInfo;>;"
    iput-object p1, p0, Landroid/service/controls/ControlsProviderService;->mControlsProviderInfoSupplier:Ljava/util/function/Supplier;

    .line 214
    return-void
.end method

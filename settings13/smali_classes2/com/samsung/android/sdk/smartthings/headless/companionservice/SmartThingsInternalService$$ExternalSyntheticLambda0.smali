.class public final synthetic Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->$r8$lambda$QLpJasJElwurdLzhZF4C7VOtgYo(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    move-result-object p0

    return-object p0
.end method

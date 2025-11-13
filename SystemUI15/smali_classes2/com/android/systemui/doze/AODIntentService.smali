.class public Lcom/android/systemui/doze/AODIntentService;
.super Landroid/app/IntentService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mPluginAODManagerLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AODIntentService"

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/AODIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/doze/AODIntentService;)V

    return-void
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/AODIntentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/AODIntentService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

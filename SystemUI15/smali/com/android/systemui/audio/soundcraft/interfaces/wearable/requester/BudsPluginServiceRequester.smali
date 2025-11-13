.class public abstract Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final budsPluginPackageName:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public final mainThreadHandler$delegate:Lkotlin/Lazy;

.field public messenger:Landroid/os/Messenger;

.field public final serviceConnection:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;

.field public final unbindServiceRunnable:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->budsPluginPackageName:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$mainThreadHandler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->mainThreadHandler$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$unbindServiceRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$unbindServiceRunnable$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->unbindServiceRunnable:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->serviceConnection:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;

    return-void
.end method


# virtual methods
.method public bindService()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->budsPluginPackageName:Ljava/lang/String;

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.accessory.hearablemgr.BUDS_CONTROLLER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.accessory.hearablemgr.core.budscontroller.BudsControllerQuickPanelService"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->serviceConnection:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, p0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "budsPluginPackageName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isSuccess="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundCraft.wearable.BudsPluginServiceRequester"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public abstract execute()V
.end method

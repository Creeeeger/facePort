.class public Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBinder:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;

.field public mEntries:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;-><init>(Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;->mBinder:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBind : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, " intent is null "

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SysUIConditionListener"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;->mBinder:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService$1;

    return-object p0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string p0, "SysUIConditionListener"

    const-string v0, "onCreate "

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

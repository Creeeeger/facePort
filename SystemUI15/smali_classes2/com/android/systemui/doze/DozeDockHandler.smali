.class public final Lcom/android/systemui/doze/DozeDockHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field public final mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockManager:Lcom/android/systemui/dock/DockManager;

    new-instance p1, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeDockHandler;I)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "DozeDockHandler:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, " dockState=0"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 0

    sget-object p1, Lcom/android/systemui/doze/DozeDockHandler$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    iget-object p1, p1, Lcom/android/systemui/doze/DozeDockHandler;->mDockManager:Lcom/android/systemui/dock/DockManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    iget-object p1, p1, Lcom/android/systemui/doze/DozeDockHandler;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iput-boolean p2, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    :goto_0
    return-void
.end method

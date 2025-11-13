.class Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;
.super Landroid/app/UserSwitchObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/ActivityManagerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;->this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;->this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    iput p1, v0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    iget-object p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;->this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    iget p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    return-void
.end method

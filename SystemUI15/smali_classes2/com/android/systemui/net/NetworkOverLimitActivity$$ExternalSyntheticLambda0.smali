.class public final synthetic Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

.field public final synthetic f$1:Landroid/net/NetworkTemplate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    iput-object p2, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkTemplate;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    iget-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkTemplate;

    sget p2, Lcom/android/systemui/net/NetworkOverLimitActivity;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "netpolicy"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object p1

    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NetworkOverLimitActivity"

    const-string p2, "problem snoozing network policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

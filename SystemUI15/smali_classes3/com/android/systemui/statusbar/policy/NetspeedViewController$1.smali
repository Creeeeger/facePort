.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p2, Landroid/net/VpnManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    invoke-virtual {p1, v0}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    goto :goto_1

    :cond_1
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onChange - sVpnConnected = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " sActiveInterface = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    const-string v1, "NetspeedViewController"

    invoke-static {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

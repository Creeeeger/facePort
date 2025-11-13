.class public final Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectResult(I)V
    .locals 1

    const-string p0, "AccessPointController"

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "connect success"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "connect failure reason="

    invoke-static {p1, v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

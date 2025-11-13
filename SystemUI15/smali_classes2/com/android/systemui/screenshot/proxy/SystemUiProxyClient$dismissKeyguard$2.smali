.class public final Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $onDoneBinder:Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$2;->$onDoneBinder:Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/IScreenshotProxy;

    iget-object p0, p0, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$2;->$onDoneBinder:Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/screenshot/IScreenshotProxy;->dismissKeyguard(Lcom/android/systemui/screenshot/IOnDoneCallback;)V

    return-void
.end method

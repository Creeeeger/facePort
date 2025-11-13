.class public final synthetic Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$1;->$tmp0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$1;->$tmp0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChanged(I)V

    return-void
.end method

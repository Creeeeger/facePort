.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    const-string p0, "KeyguardFingerprint"

    const-string v0, "Timeout skip FP response"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

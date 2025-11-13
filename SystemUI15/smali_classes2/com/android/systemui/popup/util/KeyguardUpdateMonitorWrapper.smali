.class public Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public setDialogStateForInDisplayFingerprint(Z)V
    .locals 0

    return-void
.end method

.class public final Lcom/android/systemui/edgelighting/turnover/CallStateObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mHandler:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;

.field public final mPhoneStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;

.field public mState:I

.field public mStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mState:I

    new-instance v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;-><init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mHandler:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;

    new-instance v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;-><init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mPhoneStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 p0, 0x20

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

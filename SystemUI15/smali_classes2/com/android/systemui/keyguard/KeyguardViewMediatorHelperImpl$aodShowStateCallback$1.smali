.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;->$tmp0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;->$tmp0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->access$onAODShowStateChanged(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    return-void
.end method

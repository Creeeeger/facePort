.class public final Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x12b9b099

    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.VPN_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

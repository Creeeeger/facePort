.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForPrivacyNotice$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForPrivacyNotice$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForPrivacyNotice$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    const-string p1, "PN"

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$handleTextLinkClick(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;)V

    return-void
.end method

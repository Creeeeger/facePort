.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$setClickableSpanText$1$clickableSpanForTermsAndConditions$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $it:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$setClickableSpanText$1$clickableSpanForTermsAndConditions$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$setClickableSpanText$1$clickableSpanForTermsAndConditions$1;->$it:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$setClickableSpanText$1$clickableSpanForTermsAndConditions$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$setClickableSpanText$1$clickableSpanForTermsAndConditions$1;->$it:Landroid/content/Context;

    const-string v0, "TC"

    invoke-static {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->access$handleTextLinkClick(Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->performClick()V

    :cond_0
    return-void
.end method

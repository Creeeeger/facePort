.class public final Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$1$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$1$1;->$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$1$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetailController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailFooter$1$1;->$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

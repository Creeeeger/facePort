.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

.field public final synthetic val$removedOverflowNumber:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$3;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$3;->val$removedOverflowNumber:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$3;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$3;->val$removedOverflowNumber:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->removeTransientView(Landroid/view/View;)V

    return-void
.end method

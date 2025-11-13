.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$2;->val$position:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

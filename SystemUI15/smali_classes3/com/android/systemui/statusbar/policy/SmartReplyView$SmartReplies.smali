.class public final Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final choices:Ljava/util/List;

.field public final fromAssistant:Z

.field public final pendingIntent:Landroid/app/PendingIntent;

.field public final remoteInput:Landroid/app/RemoteInput;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/app/RemoteInput;",
            "Landroid/app/PendingIntent;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    return-void
.end method

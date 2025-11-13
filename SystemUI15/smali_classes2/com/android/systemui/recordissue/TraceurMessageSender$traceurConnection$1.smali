.class public final Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recordissue/TraceurMessageSender;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/TraceurMessageSender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;->this$0:Lcom/android/systemui/recordissue/TraceurMessageSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;->this$0:Lcom/android/systemui/recordissue/TraceurMessageSender;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/android/systemui/recordissue/TraceurMessageSender;->binder:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;->this$0:Lcom/android/systemui/recordissue/TraceurMessageSender;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/recordissue/TraceurMessageSender;->isBound:Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;->this$0:Lcom/android/systemui/recordissue/TraceurMessageSender;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/recordissue/TraceurMessageSender;->binder:Landroid/os/Messenger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/recordissue/TraceurMessageSender;->isBound:Z

    return-void
.end method

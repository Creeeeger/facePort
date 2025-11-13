.class public final Lcom/android/systemui/statusbar/notification/row/NotificationGuts$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    :cond_0
    return-void
.end method

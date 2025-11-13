.class public final Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/util/Pools$Pool;


# instance fields
.field public final mPoolObjects:Ljava/util/Stack;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->mPoolObjects:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final acquire()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->assertInLegacyMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->mPoolObjects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->mPoolObjects:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final release(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->assertInLegacyMode()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->mPoolObjects:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

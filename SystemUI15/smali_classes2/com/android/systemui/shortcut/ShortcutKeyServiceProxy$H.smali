.class public final Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;->this$0:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;->this$0:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mCallbacks:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    iget-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const-wide v2, 0x1000000000047L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide v2, 0x1000000000048L

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance p1, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

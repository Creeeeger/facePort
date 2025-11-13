.class final Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;Landroid/os/Looper;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;

    const-string v2, "handleMessage onMultiFingerGesture , behavior = "

    const-string v3, ", reserved = "

    const-string v4, "[DS]InputServiceWrapper"

    invoke-static {v0, p1, v2, v3, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;->DeXMultiFingerGesture(II)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

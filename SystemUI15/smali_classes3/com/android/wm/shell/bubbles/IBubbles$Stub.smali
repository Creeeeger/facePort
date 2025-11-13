.class public abstract Lcom/android/wm/shell/bubbles/IBubbles$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.bubbles.IBubbles"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.android.wm.shell.bubbles.IBubbles"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "com.android.wm.shell.bubbles.IBubblesListener"

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    sget-object p1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p4, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p4, p0, p1, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Ljava/lang/Object;II)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda19;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p1, p4}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;II)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_2
    sget-object p1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;

    const/16 p4, 0x9

    invoke-direct {p3, p4, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p4, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda8;

    invoke-direct {p4, p0, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;II)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Ljava/lang/String;I)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_5
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_6
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p1, p4}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Ljava/lang/String;I)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p4, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p4, p0, p1, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Ljava/lang/Object;II)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_3

    instance-of p4, p3, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    if-eqz p4, :cond_3

    check-cast p3, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    goto :goto_0

    :cond_3
    new-instance p3, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleController$6$$ExternalSyntheticLambda0;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/bubbles/BubbleController$6$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_5

    instance-of p4, p3, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    if-eqz p4, :cond_5

    move-object p1, p3

    check-cast p1, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    goto :goto_1

    :cond_5
    new-instance p3, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p1, p3

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;

    const/16 p4, 0x8

    invoke-direct {p3, p4, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

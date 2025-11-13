.class public final Lio/reactivex/schedulers/Schedulers$IOTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lio/reactivex/schedulers/Schedulers$IOTask;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lio/reactivex/schedulers/Schedulers$IOTask;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lio/reactivex/schedulers/Schedulers$SingleHolder;->DEFAULT:Lio/reactivex/internal/schedulers/SingleScheduler;

    return-object p0

    :pswitch_0
    sget-object p0, Lio/reactivex/schedulers/Schedulers$NewThreadHolder;->DEFAULT:Lio/reactivex/internal/schedulers/NewThreadScheduler;

    return-object p0

    :pswitch_1
    sget-object p0, Lio/reactivex/schedulers/Schedulers$ComputationHolder;->DEFAULT:Lio/reactivex/internal/schedulers/ComputationScheduler;

    return-object p0

    :pswitch_2
    sget-object p0, Lio/reactivex/schedulers/Schedulers$IoHolder;->DEFAULT:Lio/reactivex/internal/schedulers/IoScheduler;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

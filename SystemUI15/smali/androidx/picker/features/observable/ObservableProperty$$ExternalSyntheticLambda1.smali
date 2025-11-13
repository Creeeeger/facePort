.class public final synthetic Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/picker/features/observable/ObservableProperty;

.field public final synthetic f$1:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/Function;I)V
    .locals 0

    iput p3, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/features/observable/ObservableProperty;

    iput-object p2, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->f$1:Lkotlin/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget v0, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/features/observable/ObservableProperty;

    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->f$1:Lkotlin/Function;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, Landroidx/picker/features/observable/ObservableProperty;->$r8$lambda$otjzE_lCdGyp0N87oJSWKFgXjuw(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/features/observable/ObservableProperty;

    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->f$1:Lkotlin/Function;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p0}, Landroidx/picker/features/observable/ObservableProperty;->$r8$lambda$bWm58bvahOiJ9_aNPT9IxPbEY2I(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/features/observable/ObservableProperty;

    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;->f$1:Lkotlin/Function;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p0}, Landroidx/picker/features/observable/ObservableProperty;->$r8$lambda$V08Y67k_jLy1HG6o6GQPWDQ2zMA(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

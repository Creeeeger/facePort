.class public final Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;
.super Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;ZZI)V
    .locals 0

    iput p4, p0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;-><init>(Ljava/lang/reflect/Field;ZZ)V

    return-void
.end method


# virtual methods
.method public checkArguments([Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;->checkArguments([Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;->checkArguments([Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl;->checkObjectInstance(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

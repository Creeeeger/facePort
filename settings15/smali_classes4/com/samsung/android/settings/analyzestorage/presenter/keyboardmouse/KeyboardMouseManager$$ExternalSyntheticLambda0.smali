.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/AltKeyMouseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/CtrlShiftKeyMouseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/CtrlKeyMouseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

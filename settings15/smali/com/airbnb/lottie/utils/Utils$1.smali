.class public final Lcom/airbnb/lottie/utils/Utils$1;
.super Ljava/lang/ThreadLocal;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/utils/Utils$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/utils/Utils$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x4

    new-array p0, p0, [F

    return-object p0

    :pswitch_0
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Landroid/graphics/PathMeasure;

    invoke-direct {p0}, Landroid/graphics/PathMeasure;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

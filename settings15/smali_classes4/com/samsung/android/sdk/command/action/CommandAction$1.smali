.class public final Lcom/samsung/android/sdk/command/action/CommandAction$1;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/command/action/CommandAction$1;->$r8$classId:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActionType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/command/action/CommandAction$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x62

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

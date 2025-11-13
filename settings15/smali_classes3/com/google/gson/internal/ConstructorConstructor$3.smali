.class public final Lcom/google/gson/internal/ConstructorConstructor$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$exceptionMessage:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->$r8$classId:I

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$exceptionMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/gson/JsonIOException;

    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$exceptionMessage:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/gson/JsonIOException;

    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$exceptionMessage:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/google/gson/JsonIOException;

    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$exceptionMessage:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

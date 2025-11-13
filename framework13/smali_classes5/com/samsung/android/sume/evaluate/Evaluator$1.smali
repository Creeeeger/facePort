.class Lcom/samsung/android/sume/evaluate/Evaluator$1;
.super Ljava/lang/Object;
.source "Evaluator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/evaluate/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sume/evaluate/Evaluator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/evaluate/Evaluator;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$2;->$SwitchMap$com$samsung$android$sume$evaluate$Evaluator$EvaluateType:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not supported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$Any;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$Any;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 82
    :pswitch_1
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$Except;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$Except;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 80
    :pswitch_2
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$GE;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$GE;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 79
    :pswitch_3
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$GT;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$GT;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 78
    :pswitch_4
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$LE;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$LE;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 77
    :pswitch_5
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$LT;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$LT;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 76
    :pswitch_6
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$NE;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$NE;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 75
    :pswitch_7
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$EQ;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$EQ;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/evaluate/Evaluator;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/sume/evaluate/Evaluator;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 89
    new-array v0, p1, [Lcom/samsung/android/sume/evaluate/Evaluator;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$1;->newArray(I)[Lcom/samsung/android/sume/evaluate/Evaluator;

    move-result-object p1

    return-object p1
.end method

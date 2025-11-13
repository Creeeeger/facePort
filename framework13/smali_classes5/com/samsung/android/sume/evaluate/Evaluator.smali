.class public abstract Lcom/samsung/android/sume/evaluate/Evaluator;
.super Ljava/lang/Object;
.source "Evaluator.java"

# interfaces
.implements Lcom/samsung/android/sume/evaluate/Evaluable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/evaluate/Evaluator$Except;,
        Lcom/samsung/android/sume/evaluate/Evaluator$Any;,
        Lcom/samsung/android/sume/evaluate/Evaluator$GE;,
        Lcom/samsung/android/sume/evaluate/Evaluator$GT;,
        Lcom/samsung/android/sume/evaluate/Evaluator$LE;,
        Lcom/samsung/android/sume/evaluate/Evaluator$LT;,
        Lcom/samsung/android/sume/evaluate/Evaluator$NE;,
        Lcom/samsung/android/sume/evaluate/Evaluator$EQ;,
        Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/evaluate/Evaluable;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/evaluate/Evaluator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist type:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

.field protected blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/evaluate/Evaluator$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/evaluate/Evaluator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 47
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator;, "Lcom/samsung/android/sume/evaluate/Evaluator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
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

    .line 62
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator;, "Lcom/samsung/android/sume/evaluate/Evaluator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator;->readItemFromParcel(Ljava/lang/Class;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/evaluate/Evaluator;->value:Ljava/lang/Object;

    .line 69
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void
.end method

.method public static blacklist create(Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;Ljava/lang/Object;)Lcom/samsung/android/sume/evaluate/Evaluable;
    .locals 2
    .param p0, "type"    # Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;",
            "TT;)",
            "Lcom/samsung/android/sume/evaluate/Evaluable;"
        }
    .end annotation

    .line 34
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$2;->$SwitchMap$com$samsung$android$sume$evaluate$Evaluator$EvaluateType:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$Any;

    invoke-direct {v0}, Lcom/samsung/android/sume/evaluate/Evaluator$Any;-><init>()V

    return-object v0

    .line 41
    :pswitch_1
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$Except;

    invoke-direct {v0}, Lcom/samsung/android/sume/evaluate/Evaluator$Except;-><init>()V

    return-object v0

    .line 40
    :pswitch_2
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$GE;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$GE;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 39
    :pswitch_3
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$GT;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$GT;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 38
    :pswitch_4
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$LE;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$LE;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 37
    :pswitch_5
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$LT;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$LT;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 36
    :pswitch_6
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$NE;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$NE;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 35
    :pswitch_7
    new-instance v0, Lcom/samsung/android/sume/evaluate/Evaluator$EQ;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator$EQ;-><init>(Ljava/lang/Object;)V

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


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 95
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator;, "Lcom/samsung/android/sume/evaluate/Evaluator<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getType()Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;
    .locals 1

    .line 54
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator;, "Lcom/samsung/android/sume/evaluate/Evaluator<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator;->type:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator;, "Lcom/samsung/android/sume/evaluate/Evaluator<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist isSingular()Z
    .locals 1

    .line 59
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator;, "Lcom/samsung/android/sume/evaluate/Evaluator<TT;>;"
    instance-of v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$Any;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$Except;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected blacklist readItemFromParcel(Ljava/lang/Class;Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator;, "Lcom/samsung/android/sume/evaluate/Evaluator<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 123
    :cond_2
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 124
    :cond_3
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 125
    :cond_4
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 126
    :cond_5
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_6
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 128
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist writeItemToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "item",
            "dest",
            "flags"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator;, "Lcom/samsung/android/sume/evaluate/Evaluator<TT;>;"
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 109
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 110
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 111
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 112
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 113
    :cond_4
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 114
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_6
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator;, "Lcom/samsung/android/sume/evaluate/Evaluator<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator;->type:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sume/evaluate/Evaluator;->writeItemToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 105
    :cond_0
    return-void
.end method

.class public final Landroidx/navigation/NavArgument$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public defaultValue:Ljava/lang/Object;

.field public defaultValuePresent:Z

.field public isNullable:Z

.field public type:Landroidx/navigation/NavType;


# virtual methods
.method public final build()Landroidx/navigation/NavArgument;
    .locals 4

    iget-object v0, p0, Landroidx/navigation/NavArgument$Builder;->type:Landroidx/navigation/NavType;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/navigation/NavArgument$Builder;->defaultValue:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType$Companion$IntType$1;

    goto/16 :goto_2

    :cond_0
    instance-of v1, v0, [I

    if-eqz v1, :cond_1

    sget-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto/16 :goto_2

    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType$Companion$IntType$1;

    goto/16 :goto_2

    :cond_2
    instance-of v1, v0, [J

    if-eqz v1, :cond_3

    sget-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto/16 :goto_2

    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType$Companion$IntType$1;

    goto/16 :goto_2

    :cond_4
    instance-of v1, v0, [F

    if-eqz v1, :cond_5

    sget-object v0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto/16 :goto_2

    :cond_5
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType$Companion$IntType$1;

    goto/16 :goto_2

    :cond_6
    instance-of v1, v0, [Z

    if-eqz v1, :cond_7

    sget-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto/16 :goto_2

    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    if-nez v0, :cond_8

    goto/16 :goto_1

    :cond_8
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Landroidx/navigation/NavType$ParcelableArrayType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type java.lang.Class<android.os.Parcelable>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Landroidx/navigation/NavType$ParcelableArrayType;-><init>(Ljava/lang/Class;)V

    :goto_0
    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_b

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Landroidx/navigation/NavType$SerializableArrayType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type java.lang.Class<java.io.Serializable>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Landroidx/navigation/NavType$SerializableArrayType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_b
    instance-of v1, v0, Landroid/os/Parcelable;

    if-eqz v1, :cond_c

    new-instance v1, Landroidx/navigation/NavType$ParcelableType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/navigation/NavType$ParcelableType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_c
    instance-of v1, v0, Ljava/lang/Enum;

    if-eqz v1, :cond_d

    new-instance v1, Landroidx/navigation/NavType$EnumType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/navigation/NavType$EnumType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_d
    instance-of v1, v0, Ljava/io/Serializable;

    if-eqz v1, :cond_e

    new-instance v1, Landroidx/navigation/NavType$SerializableType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/navigation/NavType$SerializableType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported for navigation arguments."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_1
    sget-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType$Companion$IntType$1;

    :cond_10
    :goto_2
    new-instance v1, Landroidx/navigation/NavArgument;

    iget-boolean v2, p0, Landroidx/navigation/NavArgument$Builder;->isNullable:Z

    iget-object v3, p0, Landroidx/navigation/NavArgument$Builder;->defaultValue:Ljava/lang/Object;

    iget-boolean p0, p0, Landroidx/navigation/NavArgument$Builder;->defaultValuePresent:Z

    invoke-direct {v1, v0, v2, v3, p0}, Landroidx/navigation/NavArgument;-><init>(Landroidx/navigation/NavType;ZLjava/lang/Object;Z)V

    return-object v1
.end method

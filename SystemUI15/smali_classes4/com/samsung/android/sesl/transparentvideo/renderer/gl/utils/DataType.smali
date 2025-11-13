.class public final enum Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

.field public static final enum FLOAT:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

.field public static final enum INT:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

.field public static final enum VEC2:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;


# instance fields
.field private final dataLength:I

.field private final glConstantType:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    const-string v1, "INT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1404

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->INT:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    const-string v2, "FLOAT"

    const/16 v4, 0x1406

    invoke-direct {v1, v2, v3, v3, v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->FLOAT:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    new-instance v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    const v3, 0x8b50

    const-string v4, "VEC2"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v5, v3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->VEC2:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    new-instance v3, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    const v4, 0x8b51

    const-string v5, "VEC3"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v6, v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;-><init>(Ljava/lang/String;III)V

    new-instance v4, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    const v5, 0x8b52

    const-string v6, "VEC4"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v7, v5}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;-><init>(Ljava/lang/String;III)V

    new-instance v5, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    const-string v6, "MAT3"

    const/4 v7, 0x5

    const/16 v8, 0x9

    const v9, 0x8b5b    # 4.9991E-41f

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;-><init>(Ljava/lang/String;III)V

    new-instance v6, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    const-string v7, "MAT4"

    const/4 v8, 0x6

    const/16 v9, 0x10

    const v10, 0x8b5c    # 4.9993E-41f

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;-><init>(Ljava/lang/String;III)V

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->$VALUES:[Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->dataLength:I

    iput p4, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->glConstantType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;
    .locals 1

    const-class v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->$VALUES:[Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    return-object v0
.end method


# virtual methods
.method public final check(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    instance-of p0, p1, [I

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    instance-of p0, p1, [F

    if-eqz p0, :cond_3

    sget-object p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public final getDataLength()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->dataLength:I

    return p0
.end method

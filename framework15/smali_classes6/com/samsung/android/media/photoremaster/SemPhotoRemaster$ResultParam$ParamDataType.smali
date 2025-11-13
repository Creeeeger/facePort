.class final enum Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;
.super Ljava/lang/Enum;
.source "SemPhotoRemaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParamDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

.field public static final enum blacklist EXCEPTIONAL:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

.field public static final enum blacklist LONG:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

.field public static final enum blacklist STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;
    .locals 3

    sget-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->LONG:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    sget-object v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->EXCEPTIONAL:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v1, "LONG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->LONG:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v1, "EXCEPTIONAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->EXCEPTIONAL:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->$values()[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->$VALUES:[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->$VALUES:[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    invoke-virtual {v0}, [Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    return-object v0
.end method

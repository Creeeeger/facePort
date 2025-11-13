.class public final enum Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;
.super Ljava/lang/Enum;
.source "ImgpPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

.field public static final enum blacklist ANY:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

.field public static final enum blacklist CUSTOM:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

.field public static final enum blacklist NATIVE_UNIIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

.field public static final enum blacklist OPENCV:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

.field public static final enum blacklist RENDERSCRIPT:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

.field public static final enum blacklist SIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;
    .locals 6

    sget-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->ANY:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    sget-object v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->SIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    sget-object v2, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->OPENCV:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    sget-object v3, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->RENDERSCRIPT:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    sget-object v4, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->CUSTOM:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    sget-object v5, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->NATIVE_UNIIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->ANY:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    new-instance v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v1, "SIMGP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->SIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    new-instance v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v1, "OPENCV"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->OPENCV:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    new-instance v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v1, "RENDERSCRIPT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->RENDERSCRIPT:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    new-instance v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v1, "CUSTOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->CUSTOM:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    new-instance v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v1, "NATIVE_UNIIMGP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->NATIVE_UNIIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    invoke-static {}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->$values()[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->$VALUES:[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->$VALUES:[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    return-object v0
.end method

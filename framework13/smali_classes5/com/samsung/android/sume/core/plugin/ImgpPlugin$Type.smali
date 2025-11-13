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

.field public static final enum blacklist OPENCV:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

.field public static final enum blacklist RENDERSCRIPT:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

.field public static final enum blacklist SIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 12
    new-instance v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->ANY:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    .line 13
    new-instance v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v3, "SIMGP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->SIMGP:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    .line 14
    new-instance v3, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v5, "OPENCV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->OPENCV:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    .line 15
    new-instance v5, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v7, "RENDERSCRIPT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->RENDERSCRIPT:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    .line 16
    new-instance v7, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    const-string v9, "CUSTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->CUSTOM:Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    .line 11
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->$VALUES:[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

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
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 11
    const-class v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;
    .locals 1

    .line 11
    sget-object v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->$VALUES:[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;

    return-object v0
.end method

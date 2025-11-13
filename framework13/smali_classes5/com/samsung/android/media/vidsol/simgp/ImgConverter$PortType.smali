.class public final enum Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;
.super Ljava/lang/Enum;
.source "ImgConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

.field public static final enum blacklist BOTH:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

.field public static final enum blacklist INPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

.field public static final enum blacklist OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 54
    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->UNKNOWN:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    .line 55
    new-instance v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const-string v3, "INPUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->INPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    .line 56
    new-instance v3, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const-string v5, "OUTPUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    .line 57
    new-instance v5, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const-string v7, "BOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->BOTH:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    .line 53
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;
    .locals 1

    .line 53
    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {v0}, [Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    return-object v0
.end method

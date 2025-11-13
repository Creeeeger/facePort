.class public final enum Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;
.super Ljava/lang/Enum;
.source "ImgConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

.field public static final enum blacklist BOOST:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

.field public static final enum blacklist LOW_MEMORY:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

.field public static final enum blacklist NORMAL:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 62
    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;->NORMAL:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    .line 63
    new-instance v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    const-string v3, "LOW_MEMORY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;->LOW_MEMORY:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    .line 64
    new-instance v3, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    const-string v5, "BOOST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;->BOOST:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    .line 61
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 61
    const-class v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;->$VALUES:[Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    invoke-virtual {v0}, [Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    return-object v0
.end method

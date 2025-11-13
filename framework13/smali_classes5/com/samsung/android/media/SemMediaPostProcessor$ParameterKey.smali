.class public final enum Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;
.super Ljava/lang/Enum;
.source "SemMediaPostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParameterKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

.field public static final enum blacklist FAST_START:Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

.field public static final enum blacklist FILTER_LEVEL:Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

.field public static final enum blacklist FILTER_NAME:Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;


# instance fields
.field private blacklist key:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 365
    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    const-string v1, "FAST_START"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->FAST_START:Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    .line 370
    new-instance v1, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    const-string v4, "FILTER_NAME"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->FILTER_NAME:Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    .line 375
    new-instance v4, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    const-string v6, "FILTER_LEVEL"

    const/4 v7, 0x5

    invoke-direct {v4, v6, v3, v7}, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->FILTER_LEVEL:Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    .line 360
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    sput-object v6, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->$VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 387
    iput p3, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->key:I

    .line 388
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 360
    const-class v0, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;
    .locals 1

    .line 360
    sget-object v0, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->$VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    invoke-virtual {v0}, [Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->key:I

    return v0
.end method

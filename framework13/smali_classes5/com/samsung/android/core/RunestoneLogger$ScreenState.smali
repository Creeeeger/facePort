.class public final enum Lcom/samsung/android/core/RunestoneLogger$ScreenState;
.super Ljava/lang/Enum;
.source "RunestoneLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/RunestoneLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/core/RunestoneLogger$ScreenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/core/RunestoneLogger$ScreenState;

.field public static final enum blacklist FOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

.field public static final enum blacklist MULTIWINDOW_2UP_MODE:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

.field public static final enum blacklist MULTIWINDOW_3UP_MODE:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

.field public static final enum blacklist NONE_MULTIWINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

.field public static final enum blacklist UNFOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/core/RunestoneLogger$ScreenState;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 64
    new-instance v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->UNKNOWN:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    new-instance v1, Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    const-string v3, "FOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->FOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    new-instance v3, Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    const-string v5, "UNFOLD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->UNFOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    .line 65
    new-instance v5, Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    const-string v7, "NONE_MULTIWINDOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->NONE_MULTIWINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    new-instance v7, Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    const-string v9, "MULTIWINDOW_2UP_MODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v6}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->MULTIWINDOW_2UP_MODE:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    new-instance v9, Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    const-string v11, "MULTIWINDOW_3UP_MODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v8}, Lcom/samsung/android/core/RunestoneLogger$ScreenState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->MULTIWINDOW_3UP_MODE:Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    .line 63
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->$VALUES:[Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->value:I

    .line 70
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/core/RunestoneLogger$ScreenState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 63
    const-class v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/core/RunestoneLogger$ScreenState;
    .locals 1

    .line 63
    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->$VALUES:[Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    invoke-virtual {v0}, [Lcom/samsung/android/core/RunestoneLogger$ScreenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/core/RunestoneLogger$ScreenState;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/samsung/android/core/RunestoneLogger$ScreenState;->value:I

    return v0
.end method

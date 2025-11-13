.class public final enum Lcom/samsung/android/core/RunestoneLogger$ScreenType;
.super Ljava/lang/Enum;
.source "RunestoneLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/RunestoneLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/core/RunestoneLogger$ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/core/RunestoneLogger$ScreenType;

.field public static final enum blacklist FOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

.field public static final enum blacklist MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/core/RunestoneLogger$ScreenType;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->UNKNOWN:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    new-instance v1, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    const-string v3, "FOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->FOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    new-instance v3, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    const-string v5, "MULTI_WINDOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    .line 50
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->$VALUES:[Lcom/samsung/android/core/RunestoneLogger$ScreenType;

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

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->value:I

    .line 56
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/core/RunestoneLogger$ScreenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/core/RunestoneLogger$ScreenType;
    .locals 1

    .line 50
    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->$VALUES:[Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {v0}, [Lcom/samsung/android/core/RunestoneLogger$ScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->value:I

    return v0
.end method

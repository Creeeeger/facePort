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
.method private static synthetic blacklist $values()[Lcom/samsung/android/core/RunestoneLogger$ScreenType;
    .locals 3

    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->UNKNOWN:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    sget-object v1, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->FOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    sget-object v2, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->UNKNOWN:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    new-instance v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    const-string v1, "FOLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->FOLD:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    new-instance v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    const-string v1, "MULTI_WINDOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->MULTI_WINDOW:Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-static {}, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->$values()[Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->$VALUES:[Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->value:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/core/RunestoneLogger$ScreenType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/core/RunestoneLogger$ScreenType;
    .locals 1

    sget-object v0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->$VALUES:[Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    invoke-virtual {v0}, [Lcom/samsung/android/core/RunestoneLogger$ScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/core/RunestoneLogger$ScreenType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/core/RunestoneLogger$ScreenType;->value:I

    return v0
.end method

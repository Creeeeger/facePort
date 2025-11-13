.class public final enum Lcom/samsung/app/video/editor/external/SummaryMode;
.super Ljava/lang/Enum;
.source "SummaryMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/SummaryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/SummaryMode;

.field public static final enum blacklist HIGHLIGHT:Lcom/samsung/app/video/editor/external/SummaryMode;

.field public static final enum blacklist SVE:Lcom/samsung/app/video/editor/external/SummaryMode;


# instance fields
.field final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/SummaryMode;

    const-string v1, "HIGHLIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/SummaryMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/SummaryMode;->HIGHLIGHT:Lcom/samsung/app/video/editor/external/SummaryMode;

    .line 5
    new-instance v1, Lcom/samsung/app/video/editor/external/SummaryMode;

    const-string v3, "SVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/SummaryMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/SummaryMode;->SVE:Lcom/samsung/app/video/editor/external/SummaryMode;

    .line 3
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/app/video/editor/external/SummaryMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/app/video/editor/external/SummaryMode;->$VALUES:[Lcom/samsung/app/video/editor/external/SummaryMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "va"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/samsung/app/video/editor/external/SummaryMode;->value:I

    .line 14
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/SummaryMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/SummaryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/SummaryMode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/SummaryMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/SummaryMode;->$VALUES:[Lcom/samsung/app/video/editor/external/SummaryMode;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/SummaryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/SummaryMode;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/samsung/app/video/editor/external/SummaryMode;->value:I

    return v0
.end method

.class public final enum Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

.field public static final enum BOTTOM:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

.field public static final enum LEFT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

.field public static final enum NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

.field public static final enum RIGHT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

.field public static final enum TOP:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    new-instance v1, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    new-instance v2, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    const-string v3, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    new-instance v3, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    const-string v4, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    new-instance v4, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    const-string v5, "RIGHT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->$VALUES:[Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->$VALUES:[Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    return-object v0
.end method

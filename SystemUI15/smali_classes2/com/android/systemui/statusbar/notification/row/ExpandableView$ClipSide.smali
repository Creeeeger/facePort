.class public final enum Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

.field public static final enum BOTTOM:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

.field public static final enum TOP:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->TOP:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    const-string v2, "BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->BOTTOM:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    filled-new-array {v0, v1}, [Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->$VALUES:[Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->$VALUES:[Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    return-object v0
.end method

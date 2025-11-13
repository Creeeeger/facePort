.class final enum Lcom/android/compose/TrackComponent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/compose/TrackComponent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/compose/TrackComponent;

.field public static final enum Background:Lcom/android/compose/TrackComponent;

.field public static final enum Icon:Lcom/android/compose/TrackComponent;

.field public static final enum Label:Lcom/android/compose/TrackComponent;


# instance fields
.field private final zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/compose/TrackComponent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Background"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/compose/TrackComponent;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/android/compose/TrackComponent;->Background:Lcom/android/compose/TrackComponent;

    new-instance v1, Lcom/android/compose/TrackComponent;

    const-string v2, "Icon"

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/compose/TrackComponent;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/android/compose/TrackComponent;->Icon:Lcom/android/compose/TrackComponent;

    new-instance v2, Lcom/android/compose/TrackComponent;

    const-string v3, "Label"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/android/compose/TrackComponent;-><init>(Ljava/lang/String;IF)V

    sput-object v2, Lcom/android/compose/TrackComponent;->Label:Lcom/android/compose/TrackComponent;

    filled-new-array {v0, v1, v2}, [Lcom/android/compose/TrackComponent;

    move-result-object v0

    sput-object v0, Lcom/android/compose/TrackComponent;->$VALUES:[Lcom/android/compose/TrackComponent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/compose/TrackComponent;->zIndex:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/compose/TrackComponent;
    .locals 1

    const-class v0, Lcom/android/compose/TrackComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/compose/TrackComponent;

    return-object p0
.end method

.method public static values()[Lcom/android/compose/TrackComponent;
    .locals 1

    sget-object v0, Lcom/android/compose/TrackComponent;->$VALUES:[Lcom/android/compose/TrackComponent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/compose/TrackComponent;

    return-object v0
.end method


# virtual methods
.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/android/compose/TrackComponent;->zIndex:F

    return p0
.end method

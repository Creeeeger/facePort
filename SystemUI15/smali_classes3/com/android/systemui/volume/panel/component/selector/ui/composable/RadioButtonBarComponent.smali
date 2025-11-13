.class final enum Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

.field public static final enum Buttons:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

.field public static final enum ButtonsBackground:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

.field public static final enum Indicator:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

.field public static final enum Labels:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;


# instance fields
.field private final zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ButtonsBackground"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->ButtonsBackground:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    new-instance v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "Indicator"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Indicator:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    new-instance v2, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    const-string v3, "Buttons"

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;-><init>(Ljava/lang/String;IF)V

    sput-object v2, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Buttons:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    new-instance v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    const-string v4, "Labels"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;-><init>(Ljava/lang/String;IF)V

    sput-object v3, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Labels:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->$VALUES:[Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

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

    iput p3, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->zIndex:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->$VALUES:[Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    return-object v0
.end method


# virtual methods
.method public final getZIndex()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->zIndex:F

    return p0
.end method

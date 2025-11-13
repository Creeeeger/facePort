.class public final enum Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_BACK_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_BACK_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_HOME_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_HOME_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

.field public static final enum NAVBAR_OVERVIEW_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

.field public static final enum NONE:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    const/16 v1, 0x215

    const-string v2, "NAVBAR_HOME_BUTTON_TAP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    const/4 v2, 0x1

    const/16 v4, 0x216

    const-string v5, "NAVBAR_BACK_BUTTON_TAP"

    invoke-direct {v1, v5, v2, v4}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    new-instance v2, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    const/4 v4, 0x2

    const/16 v5, 0x217

    const-string v6, "NAVBAR_OVERVIEW_BUTTON_TAP"

    invoke-direct {v2, v6, v4, v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    new-instance v4, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    const/4 v5, 0x3

    const/16 v6, 0x39b

    const-string v7, "NAVBAR_IME_SWITCHER_BUTTON_TAP"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    new-instance v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    const/4 v6, 0x4

    const/16 v7, 0x218

    const-string v8, "NAVBAR_HOME_BUTTON_LONGPRESS"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    new-instance v6, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    const/4 v7, 0x5

    const/16 v8, 0x219

    const-string v9, "NAVBAR_BACK_BUTTON_LONGPRESS"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    new-instance v7, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    const/4 v8, 0x6

    const/16 v9, 0x21a

    const-string v10, "NAVBAR_OVERVIEW_BUTTON_LONGPRESS"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    new-instance v8, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    const-string v9, "NONE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NONE:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->$VALUES:[Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->$VALUES:[Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->mId:I

    return p0
.end method

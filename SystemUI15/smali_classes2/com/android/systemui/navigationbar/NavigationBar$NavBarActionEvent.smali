.class public final enum Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

.field public static final enum NAVBAR_ASSIST_LONGPRESS:Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    const/4 v1, 0x0

    const/16 v2, 0x226

    const-string v3, "NAVBAR_ASSIST_LONGPRESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;->NAVBAR_ASSIST_LONGPRESS:Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    filled-new-array {v0}, [Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;->$VALUES:[Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

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

    iput p3, p0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;->$VALUES:[Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;->mId:I

    return p0
.end method

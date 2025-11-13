.class public final enum Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    const/16 v1, 0x195

    const-string v2, "LOCKSCREEN_OPEN_SECURE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    const/16 v2, 0x196

    const-string v3, "LOCKSCREEN_OPEN_INSECURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    const/16 v3, 0x197

    const-string v4, "LOCKSCREEN_CLOSE_SECURE"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    const/16 v4, 0x198

    const-string v5, "LOCKSCREEN_CLOSE_INSECURE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    const/16 v5, 0x199

    const-string v6, "BOUNCER_OPEN_SECURE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    const/16 v6, 0x19a

    const-string v7, "BOUNCER_OPEN_INSECURE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    const/16 v7, 0x19b

    const-string v8, "BOUNCER_CLOSE_SECURE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    const/16 v8, 0x19c

    const-string v9, "BOUNCER_CLOSE_INSECURE"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;->$VALUES:[Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

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

    iput p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;->$VALUES:[Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;->mId:I

    return p0
.end method

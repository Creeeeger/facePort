.class public final enum Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

.field public static final enum UPDATE_INTERACTION_MODE_AS_OWNER_USER:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

.field public static final enum UPDATE_INTERACTION_MODE_DEVICE_PROVISIONED_COMPLETE:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

.field public static final enum UPDATE_INTERACTION_MODE_FAILED_BY_EXCEPTION:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

.field public static final enum UPDATE_INTERACTION_MODE_GESTURE_BY_DEFAULT:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

.field public static final enum UPDATE_INTERACTION_MODE_SIMPLIFIED_GESTURE:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    const-string v1, "UPDATE_INTERACTION_MODE_AS_OWNER_USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_AS_OWNER_USER:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    const-string v2, "UPDATE_INTERACTION_MODE_DEVICE_PROVISIONED_COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_DEVICE_PROVISIONED_COMPLETE:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    new-instance v2, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    const-string v3, "UPDATE_INTERACTION_MODE_BY_SPLUGIN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    const-string v4, "UPDATE_INTERACTION_MODE_SIMPLIFIED_GESTURE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_SIMPLIFIED_GESTURE:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    new-instance v4, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    const-string v5, "UPDATE_INTERACTION_MODE_GESTURE_BY_DEFAULT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_GESTURE_BY_DEFAULT:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    new-instance v5, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    const-string v6, "UPDATE_INTERACTION_MODE_FAILED_BY_EXCEPTION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_FAILED_BY_EXCEPTION:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->$VALUES:[Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;
    .locals 1

    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;
    .locals 1

    sget-object v0, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->$VALUES:[Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    invoke-virtual {v0}, [Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    return-object v0
.end method

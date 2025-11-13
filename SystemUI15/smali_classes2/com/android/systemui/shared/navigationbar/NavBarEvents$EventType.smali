.class public final enum Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

.field public static final enum ON_APPEARANCE_CHANGED:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

.field public static final enum ON_ROTATION_LOCKED_CHANGED:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

.field public static final enum ON_TRANSIENT_SHOWING_CHANGED:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

.field public static final enum ON_UPDATE_ICON_BITMAP:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

.field public static final enum ON_UPDATE_NAVBAR_REMOTEVIEWS:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

.field public static final enum ON_UPDATE_SIDE_BACK_GESTURE_INSETS:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

.field public static final enum ON_UPDATE_SPLUGIN_BUNDLE:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

.field public static final enum ON_UPDATE_TASKBAR_VIS_BY_KNOX:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const-string v1, "ON_UPDATE_NAVBAR_REMOTEVIEWS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_NAVBAR_REMOTEVIEWS:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    new-instance v1, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const-string v2, "ON_UPDATE_ICON_BITMAP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_ICON_BITMAP:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    new-instance v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const-string v3, "ON_ROTATION_LOCKED_CHANGED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_ROTATION_LOCKED_CHANGED:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    new-instance v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const-string v4, "ON_TRANSIENT_SHOWING_CHANGED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_TRANSIENT_SHOWING_CHANGED:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    new-instance v4, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const-string v5, "ON_APPEARANCE_CHANGED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_APPEARANCE_CHANGED:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    new-instance v5, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const-string v6, "ON_UPDATE_SPLUGIN_BUNDLE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_SPLUGIN_BUNDLE:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    new-instance v6, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const-string v7, "ON_UPDATE_TASKBAR_VIS_BY_KNOX"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_TASKBAR_VIS_BY_KNOX:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    new-instance v7, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const-string v8, "ON_UPDATE_SIDE_BACK_GESTURE_INSETS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_SIDE_BACK_GESTURE_INSETS:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->$VALUES:[Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;
    .locals 1

    const-class v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->$VALUES:[Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    return-object v0
.end method

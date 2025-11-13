.class public final enum Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

.field public static final enum FSI_SUPPRESSED_NO_HUN_OR_KEYGUARD:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

.field public static final enum FSI_SUPPRESSED_SUPPRESSIVE_BUBBLE_METADATA:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

.field public static final enum FSI_SUPPRESSED_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

.field public static final enum HUN_SNOOZE_BYPASSED_POTENTIALLY_SUPPRESSED_FSI:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

.field public static final enum HUN_SUPPRESSED_OLD_WHEN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    const/4 v1, 0x0

    const/16 v2, 0x4d3

    const-string v3, "FSI_SUPPRESSED_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->FSI_SUPPRESSED_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    const/4 v2, 0x1

    const/16 v3, 0x549

    const-string v4, "FSI_SUPPRESSED_SUPPRESSIVE_BUBBLE_METADATA"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->FSI_SUPPRESSED_SUPPRESSIVE_BUBBLE_METADATA:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    new-instance v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    const/4 v3, 0x2

    const/16 v4, 0x4d4

    const-string v5, "FSI_SUPPRESSED_NO_HUN_OR_KEYGUARD"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->FSI_SUPPRESSED_NO_HUN_OR_KEYGUARD:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    new-instance v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    const/4 v4, 0x3

    const/16 v5, 0x4d5

    const-string v6, "HUN_SUPPRESSED_OLD_WHEN"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->HUN_SUPPRESSED_OLD_WHEN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    new-instance v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    const/4 v5, 0x4

    const/16 v6, 0x4f5

    const-string v7, "HUN_SNOOZE_BYPASSED_POTENTIALLY_SUPPRESSED_FSI"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->HUN_SNOOZE_BYPASSED_POTENTIALLY_SUPPRESSED_FSI:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

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

    iput p3, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->mId:I

    return p0
.end method

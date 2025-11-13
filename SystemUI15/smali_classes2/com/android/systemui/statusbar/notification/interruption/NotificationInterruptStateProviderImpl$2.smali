.class public abstract synthetic Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->values()[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;->$SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision:[I

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FULL_SCREEN_INTENT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;->$SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision:[I

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;->$SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision:[I

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSIVE_BUBBLE_METADATA:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;->$SwitchMap$com$android$systemui$statusbar$notification$interruption$NotificationInterruptStateProvider$FullScreenIntentDecision:[I

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_NO_HUN_OR_KEYGUARD:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

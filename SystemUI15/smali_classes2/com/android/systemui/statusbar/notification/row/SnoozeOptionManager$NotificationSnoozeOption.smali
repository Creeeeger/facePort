.class public final Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;


# instance fields
.field public final mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mConfirmation:Ljava/lang/CharSequence;

.field public final mCriterion:Landroid/service/notification/SnoozeCriterion;

.field public final mDescription:Ljava/lang/CharSequence;

.field public final mMinutesToSnoozeFor:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mCriterion:Landroid/service/notification/SnoozeCriterion;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mMinutesToSnoozeFor:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mDescription:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mConfirmation:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method


# virtual methods
.method public final getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object p0
.end method

.method public final getConfirmation()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mConfirmation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getMinutesToSnoozeFor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mMinutesToSnoozeFor:I

    return p0
.end method

.method public final getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;->mCriterion:Landroid/service/notification/SnoozeCriterion;

    return-object p0
.end method

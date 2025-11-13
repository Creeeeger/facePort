.class public final Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment$Companion;


# instance fields
.field public final isChildInGroup:Z

.field public final isConversation:Z

.field public final isGroupSummary:Z

.field public final isMinimized:Z

.field public final isPromoted:Z

.field public final isSnoozeEnabled:Z

.field public final needsRedaction:Z

.field public final smartActions:Ljava/util/List;

.field public final smartReplies:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->Companion:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;ZZZZZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartActions:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartReplies:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isConversation:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isSnoozeEnabled:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isMinimized:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->needsRedaction:Z

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isChildInGroup:Z

    iput-boolean p9, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isGroupSummary:Z

    iput-boolean p10, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isPromoted:Z

    return-void
.end method

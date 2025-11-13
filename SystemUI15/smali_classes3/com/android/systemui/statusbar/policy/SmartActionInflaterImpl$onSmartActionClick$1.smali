.class final Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $action:Landroid/app/Notification$Action;

.field final synthetic $actionIndex:I

.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$actionIndex:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$action:Landroid/app/Notification$Action;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;->smartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$actionIndex:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$action:Landroid/app/Notification$Action;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl$onSmartActionClick$1;->$smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->fromAssistant:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/SmartReplyController;->smartActionClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

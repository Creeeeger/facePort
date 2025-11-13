.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $backgroundView:Landroid/view/View;

.field public final synthetic $intent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->$intent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->$backgroundView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->$intent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChipClickListener$1;->$backgroundView:Landroid/view/View;

    invoke-static {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$handleClick(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

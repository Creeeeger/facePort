.class final Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $notifSpace:F

.field final synthetic $shelfSpace:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;->$notifSpace:F

    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;->$shelfSpace:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->shouldForceIntoShelf:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;->$notifSpace:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;->$shelfSpace:F

    invoke-static {v0, p1, v2, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->access$canStackFitInSpace(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;FF)Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->NO_FIT:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

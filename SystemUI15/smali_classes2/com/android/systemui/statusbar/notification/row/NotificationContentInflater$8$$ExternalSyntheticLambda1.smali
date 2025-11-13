.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lnoticolorpicker/NotificationColorPicker;


# direct methods
.method public synthetic constructor <init>(Lnoticolorpicker/NotificationColorPicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8$$ExternalSyntheticLambda1;->f$0:Lnoticolorpicker/NotificationColorPicker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8$$ExternalSyntheticLambda1;->f$0:Lnoticolorpicker/NotificationColorPicker;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    invoke-virtual {p0, p1, v0}, Lnoticolorpicker/NotificationColorPicker;->updateAllTextViewColors(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method

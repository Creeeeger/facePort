.class public final Lcom/android/systemui/statusbar/notification/row/NotificationViewFlipperFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactory;


# instance fields
.field public final viewModel:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationViewFlipperFactory;->viewModel:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;

    sget-object p0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget p0, Lcom/android/systemui/statusbar/notification/shared/NotificationViewFlipperPausing;->$r8$clinit:I

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final instantiate(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILjava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const-class p1, Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-class p1, Landroid/widget/ViewFlipper;

    const-string p1, "ViewFlipper"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/ViewFlipper;

    invoke-direct {p1, p4, p5}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationViewFlipperFactory;->viewModel:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder;->bindWhileAttached(Landroid/widget/ViewFlipper;Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.class public final Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$registerListenersWhileAttached(Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;->result:Ljava/lang/Object;

    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    :try_start_0
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTouchHandler:Lcom/android/systemui/Gefingerpoken;

    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$registerListenersWhileAttached$1;->label:I

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->awaitCancellation(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p0

    if-ne p0, p3, :cond_3

    return-object p3

    :cond_3
    :goto_1
    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTouchHandler:Lcom/android/systemui/Gefingerpoken;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    throw p0
.end method

.method public static bind(Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ExpandableOutlineViewBinder;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ExpandableOutlineViewBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ExpandableViewBinder;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ExpandableViewBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/plugins/FalsingManager;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$bind$1;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder$bind$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method

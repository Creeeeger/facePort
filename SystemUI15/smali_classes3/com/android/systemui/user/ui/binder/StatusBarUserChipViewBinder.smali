.class public final Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;->INSTANCE:Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1;-><init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_MUM_ICON:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$2;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$2;-><init>(Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :cond_0
    return-void
.end method

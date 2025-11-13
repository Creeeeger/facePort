.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;->INSTANCE:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Landroid/view/LayoutInflater;Lcom/android/systemui/classifier/FalsingCollector;Lkotlin/jvm/functions/Function0;)V
    .locals 13

    move-object v11, p0

    move-object v1, p1

    const v0, 0x7f0a0dfe

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/user/UserSwitcherRootView;

    const v0, 0x7f0a0461

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/helper/widget/Flow;

    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0a0241

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v6, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    move-object v9, p2

    invoke-direct {v6, p2}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;-><init>(Landroid/view/LayoutInflater;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$1;

    move-object/from16 v5, p3

    invoke-direct {v3, v5}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$1;-><init>(Lcom/android/systemui/classifier/FalsingCollector;)V

    iput-object v3, v8, Lcom/android/systemui/user/UserSwitcherRootView;->touchHandler:Lcom/android/systemui/Gefingerpoken;

    new-instance v3, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;

    invoke-direct {v3, p1}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$3;

    invoke-direct {v3, p1}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$3;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v12, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v3, p4

    move-object v5, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v12}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method

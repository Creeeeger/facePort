.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;)V
    .locals 7

    new-instance v6, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder$bind$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;Landroidx/constraintlayout/widget/ConstraintLayout;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v6}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method

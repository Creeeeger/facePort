.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewClockViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewClockViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewClockViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewClockViewBinder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewClockViewBinder$bind$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewClockViewBinder$bind$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    new-instance p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewClockViewBinder$bind$2;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewClockViewBinder$bind$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method

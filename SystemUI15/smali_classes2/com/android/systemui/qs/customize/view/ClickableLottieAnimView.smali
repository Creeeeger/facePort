.class public final Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public animType:Lcom/android/systemui/qs/customize/view/AnimType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/android/systemui/qs/customize/view/AnimType;->SEPARATE:Lcom/android/systemui/qs/customize/view/AnimType;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;->animType:Lcom/android/systemui/qs/customize/view/AnimType;

    new-instance p1, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$getButtonAccessibilityDelegate$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$getButtonAccessibilityDelegate$1;-><init>(Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setFocusable(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;-><init>(Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

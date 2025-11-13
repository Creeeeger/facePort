.class final Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2$smartSpaceViews$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2$smartSpaceViews$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2$smartSpaceViews$1;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2$smartSpaceViews$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2$smartSpaceViews$1;->INSTANCE:Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2$smartSpaceViews$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    instance-of p2, p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iput p0, p1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromUnfold:F

    iget p2, p1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromAod:F

    iget v0, p1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromClockDesign:F

    add-float/2addr p2, v0

    add-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

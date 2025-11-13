.class public final Lcom/android/systemui/keyguard/animator/PivotViewController$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$8;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$8;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    iget p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

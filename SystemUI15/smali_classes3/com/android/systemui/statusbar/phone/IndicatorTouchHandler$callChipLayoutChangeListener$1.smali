.class public final Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-eq p4, p8, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->access$updateCallChipRect(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V

    :cond_1
    return-void
.end method

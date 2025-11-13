.class public final Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$cornerRadiusEnforcementOutline$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$cornerRadiusEnforcementOutline$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$cornerRadiusEnforcementOutline$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;

    iget-object p1, p1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->enforcedRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$cornerRadiusEnforcementOutline$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;

    iget p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->enforcedCornerRadius:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->enforcedRectangle:Landroid/graphics/Rect;

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    :goto_1
    return-void
.end method

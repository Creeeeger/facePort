.class public final Lcom/android/systemui/communal/widgets/CommunalWidgetHost$CommunalAppWidgetHostListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;


# instance fields
.field public final appWidgetId:I

.field public final onUpdateProviderInfo:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$CommunalAppWidgetHostListener;->appWidgetId:I

    iput-object p2, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$CommunalAppWidgetHostListener;->onUpdateProviderInfo:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$CommunalAppWidgetHostListener;->onUpdateProviderInfo:Lkotlin/jvm/functions/Function2;

    iget p0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$CommunalAppWidgetHostListener;->appWidgetId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onViewDataChanged(I)V
    .locals 0

    return-void
.end method

.method public final updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    return-void
.end method
